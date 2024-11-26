<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #FFB200; /* Custom yellow background */
            height: 100vh; /* Full height */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-container {
            background-color: white; /* White background for the form */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px; /* Max width for the form */
        }
        .form-control {
            height: 50px; /* Increased height for input fields */
        }
        .btn-success {
        background-color: #FF5733; /* Red button */
        border: none;
    }
    </style>
</head>
<body>

    <div class="form-container">
        <form action="{{ url('/signup/store') }}" method="post" class="form-group">
            @csrf
            <h3 class="text-center">Create Account</h3>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                <input type="text" name="name" id="name" placeholder="Your Name" class="form-control" required>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                </div>
                <input type="text" name="phone" id="phone" placeholder="Your Phone" class="form-control" required>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                </div>
                <input type="email" name="email" id="email" placeholder="Your Email" class="form-control" required>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                </div>
                <input type="password" name="password" id="password" placeholder="Your Password" class="form-control" required>
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-link"></i></span>
                </div>
                @if($name)
                    <input type="text" name="referral_id" id="referral" value="You were invited by {{ $name }}" class="form-control" disabled>
                @else
                    <input type="text" name="referral_id" id="referral" value="No Referral ID provided." class="form-control" disabled>
                @endif
            </div>
            {{-- here the referral id submit --}}
            @if($id)
                <input type="text" name="referral_id" id="referral" value="{{ $id }}" class="form-control" hidden>
            @else
                <input type="text" name="referral_id" id="referral" value="No Referral ID provided." class="form-control" hidden>
            @endif
            
            <div class="mb-3">
                <input type="submit" value="Create Account" class="btn btn-success rounded-pill w-100">
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>

</body>
</html>