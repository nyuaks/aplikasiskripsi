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
            background-color: #fff; /* Warna putih untuk elemen formulir */
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Send Notification</h1>

        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form method="post" action="/send-notification">
            @csrf

            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" name="subject" id="subject" required value="{{ old('subject') }}">
            </div>

            <div class="form-group">
                <label for="message">Message:</label>
                <textarea name="message" id="message" required>{{ old('message') }}</textarea>
            </div>

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

