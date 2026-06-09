<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --accent: #8b5cf6;
            --success: #10b981;
            --warning: #f59e0b;
            --error: #ef4444;
            
            --bg: #f8fafc;
            --surface: #ffffff;
            --muted: #64748b;
            --border: #e2e8f0;
            
            --radius: 16px;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
            --container: 1280px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg);
            color: #1e293b;
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Enhanced Header */
        header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: var(--shadow);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
            gap: 24px;
        }

        .brand {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 24px;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .brand span {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Navigation */
        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 10px 16px;
            border-radius: 12px;
            font-weight: 500;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        nav.main-nav li a:hover {
            background: var(--bg);
            color: var(--primary);
            transform: translateY(-1px);
        }

        /* Search */
        .search {
            position: relative;
            min-width: 280px;
        }

        .search input {
            width: 100%;
            padding: 12px 48px 12px 16px;
            border: 2px solid var(--border);
            border-radius: 12px;
            background: var(--bg);
            font-size: 14px;
            transition: all 0.2s ease;
        }

        .search input:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        }

        .search-btn {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: var(--muted);
            cursor: pointer;
        }

        /* Header Actions */
        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .action-btn {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            border: none;
            background: var(--bg);
            color: var(--muted);
            cursor: pointer;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .action-btn:hover {
            background: var(--primary);
            color: white;
            transform: translateY(-2px);
        }

        .cart-btn {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--error);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, rgba(37, 99, 235, 0.9), rgba(139, 92, 246, 0.8)),
                        url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80)') center/cover;
            color: white;
            padding: 80px 0;
            border-radius: 0 0 var(--radius) var(--radius);
            margin-bottom: 48px;
        }

        .hero-content {
            max-width: 600px;
            text-align: center;
            margin: 0 auto;
        }

        .hero h1 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 48px;
            font-weight: 800;
            margin-bottom: 16px;
            line-height: 1.2;
        }

        .hero p {
            font-size: 18px;
            opacity: 0.95;
            margin-bottom: 32px;
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 14px 28px;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.2);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        /* Sections */
        .section {
            padding: 64px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 32px;
        }

        .section-title h2 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .section-title p {
            color: var(--muted);
            font-size: 16px;
        }

        /* Categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
        }

        .category-card {
            background: var(--surface);
            padding: 24px;
            border-radius: var(--radius);
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
        }

        .category-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
            border-color: var(--primary);
        }

        .category-icon {
            width: 60px;
            height: 60px;
            margin: 0 auto 16px;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
        }

        .category-card h4 {
            font-weight: 600;
            margin-bottom: 8px;
        }

        /* Products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 24px;
        }

        .product-card {
            background: var(--surface);
            border-radius: var(--radius);
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
        }

        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 6px 12px;
            border-radius: 8px;
            font-size: 12px;
            font-weight: 600;
            z-index: 2;
        }

        .badge-new {
            background: var(--success);
            color: white;
        }

        .badge-sale {
            background: var(--error);
            color: white;
        }

        .product-image {
            position: relative;
            height: 240px;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .product-content {
            padding: 20px;
        }

        .product-title {
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 16px;
        }

        .product-category {
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 12px;
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 12px;
        }

        .current-price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 14px;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            margin-bottom: 16px;
        }

        .rating-stars {
            color: #fbbf24;
        }

        .rating-count {
            color: var(--muted);
            font-size: 13px;
        }

        .product-actions {
            display: flex;
            gap: 8px;
        }

        .add-to-cart {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .add-to-cart:hover {
            background: var(--primary-dark);
        }

        .wishlist-btn {
            width: 44px;
            height: 44px;
            border: 1px solid var(--border);
            background: var(--surface);
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .wishlist-btn:hover {
            border-color: var(--error);
            color: var(--error);
        }

        /* Flash Sale */
        .flash-sale {
            background: linear-gradient(135deg, #ff6b6b, #ff8787);
            color: white;
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            align-items: center;
        }

        .sale-image {
            width: 45%;
            height: 320px;
        }

        .sale-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .sale-content {
            padding: 40px;
            flex: 1;
        }

        .sale-timer {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .time-unit {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 16px;
            border-radius: 12px;
            min-width: 80px;
            text-align: center;
        }

        .time-value {
            font-size: 24px;
            font-weight: 700;
        }

        .time-label {
            font-size: 12px;
            opacity: 0.9;
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: white;
            border-radius: var(--radius);
            padding: 48px;
            text-align: center;
        }

        .newsletter-form {
            display: flex;
            gap: 12px;
            max-width: 480px;
            margin: 24px auto 0;
        }

        .newsletter-input {
            flex: 1;
            padding: 16px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
        }

        /* Footer */
        footer {
            background: var(--surface);
            border-top: 1px solid var(--border);
            padding: 64px 0 32px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-brand {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 24px;
            margin-bottom: 16px;
            color: var(--primary);
        }

        .social-links {
            display: flex;
            gap: 12px;
            margin-top: 20px;
        }

        .social-link {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: var(--bg);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s ease;
        }

        .social-link:hover {
            background: var(--primary);
            color: white;
            transform: translateY(-2px);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 32px;
            border-top: 1px solid var(--border);
            color: var(--muted);
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .hero h1 {
                font-size: 36px;
            }
            
            .sale-image {
                width: 40%;
                height: 280px;
            }
        }

        @media (max-width: 768px) {
            .header-inner {
                flex-wrap: wrap;
            }
            
            nav.main-nav {
                display: none;
            }
            
            .search {
                order: 3;
                min-width: 100%;
                margin-top: 16px;
            }
            
            .flash-sale {
                flex-direction: column;
            }
            
            .sale-image {
                width: 100%;
                height: 240px;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
        }

        @media (max-width: 480px) {
            .hero {
                padding: 60px 0;
            }
            
            .hero h1 {
                font-size: 28px;
            }
            
            .section {
                padding: 48px 0;
            }
            
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in {
            animation: fadeIn 0.6s ease-out;
        }

        /* Loading animation for cart */
        @keyframes cartBounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-10px);
            }
            60% {
                transform: translateY(-5px);
            }
        }

        .cart-bounce {
            animation: cartBounce 0.6s ease;
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-bolt"></i>
                    <span>NexusShop</span>
                </a>
            </div>

            <nav class="main-nav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-grid"></i> Categories</a></li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                </ul>
            </nav>

            <div class="search">
                <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products">
                <button class="search-btn" id="searchBtn" aria-label="Search">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <div class="header-actions">
                <button class="action-btn" title="Account">
                    <i class="fas fa-user"></i>
                </button>
                <button class="action-btn" title="Wishlist">
                    <i class="fas fa-heart"></i>
                </button>
                <button class="action-btn cart-btn" id="cartBtn" title="Cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="container hero-content fade-in">
                <h1>Elevate Your Style</h1>
                <p>Discover premium products curated for the modern lifestyle. Exclusive deals, fast shipping, and exceptional quality.</p>
                <div style="display:flex;gap:16px;justify-content:center;flex-wrap:wrap;">
                    <button class="btn btn-primary" id="shopNow">
                        <i class="fas fa-shopping-bag"></i> Shop Now
                    </button>
                    <button class="btn btn-secondary" id="exploreDeals">
                        <i class="fas fa-tag"></i> View Deals
                    </button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container">
            <div class="section-title fade-in">
                <h2>Shop by Category</h2>
                <p>Explore our curated collections</p>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- Products -->
        <section class="section container">
            <div class="section-title fade-in">
                <h2>Trending Now</h2>
                <p>Most popular among our customers</p>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Sale -->
        <section id="deals" class="section container">
            <div class="section-title fade-in">
                <h2>Flash Sale</h2>
                <p>Limited time offers - don't miss out!</p>
            </div>
            <div class="flash-sale fade-in">
                <div class="sale-image">
                    <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" alt="MacBook Air M2">
                </div>
                <div class="sale-content">
                    <h3 style="font-size:28px;margin-bottom:12px;">MacBook Air M2</h3>
                    <p style="opacity:0.9;margin-bottom:24px;">Supercharged by the M2 chip - revolutionary performance in an ultra-portable design.</p>
                    
                    <div class="sale-timer">
                        <div class="time-unit">
                            <div class="time-value" id="dealDays">1</div>
                            <div class="time-label">Days</div>
                        </div>
                        <div class="time-unit">
                            <div class="time-value" id="dealHours">12</div>
                            <div class="time-label">Hours</div>
                        </div>
                        <div class="time-unit">
                            <div class="time-value" id="dealMinutes">45</div>
                            <div class="time-label">Minutes</div>
                        </div>
                        <div class="time-unit">
                            <div class="time-value" id="dealSeconds">30</div>
                            <div class="time-label">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:16px;margin-bottom:20px;">
                        <div style="font-size:32px;font-weight:700;">$999</div>
                        <div style="text-decoration:line-through;opacity:0.7;">$1,199</div>
                        <div style="background:rgba(255,255,255,0.2);padding:6px 12px;border-radius:8px;font-weight:600;">
                            -17% OFF
                        </div>
                    </div>

                    <p style="margin-bottom:24px;opacity:0.9;">
                        <i class="fas fa-bolt"></i> Only <strong>8</strong> left at this price!
                    </p>

                    <button class="btn btn-primary" id="buyDeal" style="background:white;color:#ff6b6b;">
                        <i class="fas fa-bolt"></i> Claim Deal Now
                    </button>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container">
            <div class="newsletter fade-in">
                <h3 style="font-size:28px;margin-bottom:12px;">Stay Updated</h3>
                <p style="opacity:0.9;margin-bottom:0;">Get exclusive offers and early access to new arrivals</p>
                <form class="newsletter-form" id="newsletterForm">
                    <input type="email" class="newsletter-input" placeholder="Enter your email" required>
                    <button type="submit" class="btn btn-primary" style="background:white;color:var(--primary);">
                        Subscribe
                    </button>
                </form>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="footer-brand">NexusShop</div>
                    <p style="color:var(--muted);line-height:1.6;">
                        Premium e-commerce experience with curated products and exceptional service.
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>

                <div>
                    <h4 style="margin-bottom:16px;font-weight:600;">Company</h4>
                    <ul style="list-style:none;">
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">About Us</a></li>
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Careers</a></li>
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Press</a></li>
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Blog</a></li>
                    </ul>
                </div>

                <div>
                    <h4 style="margin-bottom:16px;font-weight:600;">Support</h4>
                    <ul style="list-style:none;">
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Help Center</a></li>
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Shipping</a></li>
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Returns</a></li>
                        <li style="margin-bottom:8px;"><a href="#" style="color:var(--muted);text-decoration:none;">Contact</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; 2024 NexusShop. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Data and core functionality remains similar but enhanced
        const CATEGORIES = [
            { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
            { id: 'wearables', name: 'Wearables', icon: 'fa-watch' },
            { id: 'cameras', name: 'Cameras', icon: 'fa-camera' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-tshirt' }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: 'iPhone 15 Pro',
                price: 999,
                oldPrice: 1099,
                rating: 4.8,
                reviews: 234,
                badge: 'New',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80)',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 16"',
                price: 2499,
                rating: 4.9,
                reviews: 156,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1541807084-5c52b6b3adef?auto=format&fit=crop&w=600&q=80)',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'AirPods Pro',
                price: 249,
                oldPrice: 299,
                rating: 4.7,
                reviews: 423,
                badge: 'Sale',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46?auto=format&fit=crop&w=600&q=80)',
                category: 'audio'
            },
            {
                id: 4,
                title: 'Apple Watch Ultra',
                price: 799,
                rating: 4.8,
                reviews: 189,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1579586337278-3e)
