<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Created</title>
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
            margin: 0;
        }
        .services_section {
            background-color: #ffffff; /* White background for the section */
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px; /* Max width for the section */
        }
        .services_taital {
            text-align: center;
            color: #333;
            font-size: 32px;
            font-weight: bold;
        }
        .services_text {
            font-size: 16px;
            color: #555;
            margin-top: 20px;
            text-align: center;
        }
        .services_section_2 {
            margin-top: 40px;
        }
        .icon_img {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
        .icon_img img {
            width: 80px;
            height: 80px;
        }
        .readmore_btn a {
            display: block;
            background-color: #ff9033; /* Orange button color */
            color: white;
            text-align: center;
            padding: 12px 25px;
            border-radius: 25px;
            text-decoration: none;
            margin-top: 20px;
        }
        .readmore_btn a:hover {
            background-color: #e77b29; /* Darker shade on hover */
        }
        .bitcoin_text {
            font-size: 22px;
            margin-top: 20px;
            text-align: center;
            color: #333;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .services_section {
                padding: 30px 20px;
            }
            .services_taital {
                font-size: 28px;
            }
            .services_text {
                font-size: 14px;
            }
            .bitcoin_text {
                font-size: 18px;
            }
            .icon_img img {
                width: 60px;
                height: 60px;
            }
            .readmore_btn a {
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>

    <div class="services_section">
        <h1 class="services_taital">Your Account has been Created</h1>
        <p class="services_text">Use your account now to invest with Future Trade. Download the mobile app for enhanced features.</p>

        <div class="services_section_2">
            <div class="row">
                <div class="col-12 text-center">
                    <!-- Centering the icon -->
                    <div class="icon_img">
                        <img src="/images/future-trade.png" alt="Download App Icon">
                    </div>
                    <h3 class="bitcoin_text">Download App</h3>
                    <p class="services_text">Use your account now to invest with Future Trade. Download the Google App for enhanced features.</p>
                    <div class="readmore_btn">
                        <a href="{{ App\Models\Setting::where('key', 'android_app_url')->get()->first()->value }}" target="_blank">
                            <i class="fab fa-google-play fa-rotate-by"></i>&nbsp;Android App
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>

</body>
</html>
