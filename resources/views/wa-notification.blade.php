<!DOCTYPE html>
<html>
<head>
    <title>Send Notification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgba(85, 107, 47, 0.7);
        }

        .container {
            background-color: #fff;
            /* Warna putih untuk elemen formulir */
            padding: 20px;
            border-radius: 5px;
            margin: 0 auto;
            width: 400px;
            margin-top: 100px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .form-group button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #45a049;
        }

        .alert {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 3px;
        }

        .alert-success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0000FF;
            color: #fff;
            text-decoration: none;
            border-radius: 3px;
            margin-right: 10px;
        }

        .close-btn {
            position: absolute;
            top: 0;
            right: 0;
            padding: 0.5rem;
            background-color: transparent;
            border: none;
            outline: none;
            cursor: pointer;
        }

        .collapsible {
            background-color: #777;
            color: white;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
        }

        .active,
        .collapsible:hover {
            background-color: #555;
        }

        .collapsible:after {
            content: '\002B';
            color: white;
            font-weight: bold;
            float: right;
            margin-left: 5px;
        }

        .active:after {
            content: "\2212";
        }

        .alert-danger {
            padding: 0 18px;
            display: none;
            overflow: hidden;
            background-color: #f1f1f1;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Send Notification</h1>

        @if(session('message'))
        <div class="alert alert-success" role="alert">
            {{ session('message') }}
            <button type="button" class="close-btn" onclick="closeAlert(this)" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <script>
            function closeAlert(button) {
                button.parentNode.style.display = 'none';
            }

        </script>
        @endif

        <!-- Menampilkan link untuk menampilkan nomor yang gagal dikirim -->
        @if(session('failureCount'))
        @php
        $failureCount = session('failureCount');
        $failedNumbers = session('failedNumbers');
        @endphp
        @if($failureCount > 0)
        <button type="button" class="collapsible">Gagal dikirim ke {{ $failureCount }} responden</button>
        <div class="alert alert-danger">
            <ul>
                @foreach($failedNumbers as $number)
                <li>{{ $number }}</li>
                @endforeach
            </ul>
        </div>

        @endif
        @endif


        <script>
            function closeAlert(button) {
                button.parentNode.style.display = 'none';
            }

            var coll = document.getElementsByClassName("collapsible");
            var i;

            for (i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function() {
                    this.classList.toggle("active");
                    var content = this.nextElementSibling;
                    if (content.style.display === "block") {
                        content.style.display = "none";
                    } else {
                        content.style.display = "block";
                    }
                });
            }

        </script>

        <form method="post" action="/wa-notification">
            @csrf
            @method('post')

            <div class="form-group">
                <label for="message">Message:</label>
                <textarea name="message" id="message" required></textarea>
                <input type="hidden" name="device" value="{{ env('WA_API_KEY') }}">
                <input type="hidden" name="api" value="{{ env('WA_AUTH_KEY') }}">
            </div>
            {{-- <div class="form-group d-none">
                <label for="message">AppKey:</label>
            </div>
            <div class="form-group d-none">
                <label for="message">AuthKey:</label>
            </div> --}}
            <div class="form-group">
                <button type="submit">Kirim Notifikasi</button>
            </div>
            <a href="{{ URL::previous() }}" class="btn">Kembali</a>
            <a href="{{ url('/home') }}" class="btn">Home</a>

            @error('subject')
            <div class="alert alert-danger">{{ $message }}</div>
            @enderror

            @error('message')
            <div class="alert alert-danger">{{ $message }}</div>
            @enderror
        </form>
    </div>
</body>
</html>
