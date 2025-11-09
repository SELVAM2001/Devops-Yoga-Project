# Use the official lightweight Nginx image
FROM nginx:alpine
<title>YOGA TIME: Flow & Strength - Your Hybrid Fitness Studio</title>
# Copy all local files (including your Index.html) into the Nginx web directory
COPY . /usr/share/nginx/html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YOGA TIME: Flow & Strength - Your Hybrid Fitness Studio</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    
    <style>
        /* Define Custom Colors and Font */
        :root {
            --color-primary: #4f46e5; /* Indigo 600 - Dynamic, Trustworthy */
            --color-secondary: #20b2aa; /* Light Sea Green - Calming, Balanced */
            --color-accent: #fcd34d; /* Amber 300 - Energy */
        }
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8fafc;
            scroll-behavior: smooth;
        }
        .bg-primary { background-color: var(--color-primary); }
        .text-primary { color: var(--color-primary); }
        .border-primary { border-color: var(--color-primary); }
        .bg-secondary { background-color: var(--color-secondary); }
        .text-secondary { color: var(--color-secondary); }
        .border-secondary { border-color: var(--color-secondary); }
        .bg-accent { background-color: var(--color-accent); }
        .text-accent { color: var(--color-accent); }

        /* Star rating SVG */
        .star-filled {
            fill: var(--color-accent);
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="sticky top-0 z-50 bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <!-- Logo: YOGA TIME -->
                <div class="flex-shrink-0">
                    <a href="#home" class="text-2xl font-extrabold tracking-tight flex items-center text-primary">
                        <span class="text-4xl mr-2">&#129497;</span> 
                        YOGA <span class="text-secondary ml-1">TIME</span>
                    </a>
                </div>
                <!-- Desktop Links -->
                <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4">
                        <a href="#plans" class="text-gray-600 hover:text-primary px-3 py-2 rounded-md text-sm font-medium transition duration-150">Plans & Pricing</a>
                        <a href="#trainers" class="text-gray-600 hover:text-primary px-3 py-2 rounded-md text-sm font-medium transition duration-150">Trainers</a>
                        <a href="#ratings" class="text-gray-600 hover:text-primary px-3 py-2 rounded-md text-sm font-medium transition duration-150">Reviews</a>
                        <a href="#locations" class="text-gray-600 hover:text-primary px-3 py-2 rounded-md text-sm font-medium transition duration-150">Locations</a>
                        <a href="#booking" class="text-gray-600 hover:text-primary px-3 py-2 rounded-md text-sm font-medium transition duration-150">Book Now</a>
                        <a href="#queries" class="text-gray-600 hover:text-primary px-3 py-2 rounded-md text-sm font-medium transition duration-150">Contact</a>
                    </div>
                </div>
                <!-- Mobile Menu Button -->
                <div class="md:hidden flex items-center">
                    <button id="mobile-menu-btn" type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-primary" aria-expanded="false">
                        <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
                        <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        <!-- Mobile Menu Panel -->
        <div class="md:hidden hidden" id="mobile-menu">
            <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3">
                <a href="#plans" class="text-gray-700 hover:bg-primary hover:text-white block px-3 py-2 rounded-md text-base font-medium transition duration-150">Plans & Pricing</a>
                <a href="#trainers" class="text-gray-700 hover:bg-primary hover:text-white block px-3 py-2 rounded-md text-base font-medium transition duration-150">Trainers</a>
                <a href="#ratings" class="text-gray-700 hover:bg-primary hover:text-white block px-3 py-2 rounded-md text-base font-medium transition duration-150">Reviews</a>
                <a href="#locations" class="text-gray-700 hover:bg-primary hover:text-white block px-3 py-2 rounded-md text-base font-medium transition duration-150">Locations</a>
                <a href="#booking" class="text-gray-700 hover:bg-primary hover:text-white block px-3 py-2 rounded-md text-base font-medium transition duration-150">Book Now</a>
                <a href="#queries" class="text-gray-700 hover:bg-primary hover:text-white block px-3 py-2 rounded-md text-base font-medium transition duration-150">Contact</a>
            </div>
        </div>
    </nav>

    <main>
        <!-- Hero Section -->
        <section id="home" class="relative bg-gray-900 py-20 sm:py-32 overflow-hidden">
            <div class="absolute inset-0 opacity-20">
                <!-- Using a placeholder for a combined Yoga/Strength background -->
                <img src="https://placehold.co/1200x600/1e293b/ffffff?text=YOGA+AND+STRENGTH" alt="Hybrid fitness studio background" class="w-full h-full object-cover">
            </div>
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 text-center text-white">
                <h1 class="text-5xl sm:text-6xl lg:text-7xl font-extrabold tracking-tight mb-4">
                    Flow <span class="text-secondary">&</span> <span class="text-accent">Strength</span>
                </h1>
                <p class="text-xl sm:text-2xl text-gray-300 max-w-4xl mx-auto mb-10">
                    Master **mobility and power** at YOGA TIME. The only studio dedicated to holistic body transformation through personalized Yoga and Bodybuilding programs.
                </p>
                <a href="#plans" class="inline-block bg-primary text-white font-semibold py-3 px-10 rounded-full shadow-lg hover:bg-indigo-700 transition duration-300 transform hover:scale-105 ring-4 ring-white/50">
                    View Our Plans
                </a>
            </div>
        </section>

        <!-- --- -->
        <!-- Plans & Pricing Section -->
        <!-- --- -->
        <section id="plans" class="py-16 bg-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-extrabold text-gray-900 text-center mb-4">Choose Your Path to Transformation</h2>
                <p class="text-center text-lg text-gray-600 max-w-3xl mx-auto mb-12">All plans include unlimited access to our general schedule of Yoga, HIIT, and Strength classes.</p>

                <!-- Pricing Cards Container -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">

                    <!-- Basic Plan -->
                    <div class="plan-card bg-white border border-gray-200 rounded-xl shadow-xl p-8 flex flex-col transition duration-300 hover:shadow-2xl hover:scale-[1.02] cursor-pointer" data-plan-name="Basic Plan" data-plan-price="5999">
                        <h3 class="text-2xl font-bold text-gray-900 mb-2">Basic Flow</h3>
                        <p class="text-gray-500 mb-4">Essential access for sustained fitness.</p>
                        <p class="text-6xl font-extrabold text-primary mb-6">
                            ₹5,999 <span class="text-xl font-medium text-gray-500">/ mo</span>
                        </p>
                        <ul class="space-y-3 text-gray-600 mb-8 flex-grow">
                            <li class="flex items-center"><span class="text-primary mr-2 text-xl">&#10003;</span> Unlimited General Classes</li>
                            <li class="flex items-center"><span class="text-primary mr-2 text-xl">&#10003;</span> Open Gym Access (6 am - 10 pm)</li>
                            <li class="flex items-center text-red-500"><span class="mr-2 text-xl">&#10006;</span> No Private Sessions</li>
                            <li class="flex items-center text-red-500"><span class="mr-2 text-xl">&#10006;</span> Group Check-ins Only</li>
                        </ul>
                        <a href="#booking" class="select-plan-btn text-center mt-auto bg-gray-200 text-gray-800 font-semibold py-3 rounded-lg hover:bg-gray-300 transition duration-300">
                            Select Basic Plan
                        </a>
                    </div>

                    <!-- Gold Plan (Featured) -->
                    <div class="plan-card bg-primary text-white border-4 border-accent rounded-xl shadow-2xl p-8 flex flex-col transform transition duration-500 scale-100 md:scale-105 cursor-pointer" data-plan-name="Gold Plan" data-plan-price="6999">
                        <div class="bg-accent text-gray-900 text-center py-1 rounded-full text-sm font-semibold -mt-10 mb-4 mx-auto w-2/3 shadow-md">
                            Most Popular
                        </div>
                        <h3 class="text-3xl font-bold mb-2">Gold Hybrid</h3>
                        <p class="text-gray-200 mb-4">Optimal balance of flow and fundamental strength training.</p>
                        <p class="text-6xl font-extrabold mb-6 text-accent">
                            ₹6,999 <span class="text-xl font-medium text-gray-300">/ mo</span>
                        </p>
                        <ul class="space-y-3 mb-8 flex-grow">
                            <li class="flex items-center"><span class="text-accent mr-2 text-xl">&#10003;</span> Everything in Basic</li>
                            <li class="flex items-center"><span class="text-accent mr-2 text-xl">&#10003;</span> Monthly 1-on-1 Strategy Session</li>
                            <li class="flex items-center"><span class="text-accent mr-2 text-xl">&#10003;</span> Free Access to Workshops</li>
                            <li class="flex items-center"><span class="text-accent mr-2 text-xl">&#10003;</span> Nutritional Guidance eBook</li>
                        </ul>
                        <a href="#booking" class="select-plan-btn text-center mt-auto bg-accent text-gray-900 font-semibold py-3 rounded-lg shadow-lg hover:bg-amber-400 transition duration-300">
                            Select Gold Plan
                        </a>
                    </div>

                    <!-- Premium Plan -->
                    <div class="plan-card bg-white border border-gray-200 rounded-xl shadow-xl p-8 flex flex-col transition duration-300 hover:shadow-2xl hover:scale-[1.02] cursor-pointer" data-plan-name="Premium Plan" data-plan-price="7999">
                        <h3 class="text-2xl font-bold text-gray-900 mb-2">Premium Pro</h3>
                        <p class="text-gray-500 mb-4">Dedicated support for competitive goals and rapid progress.</p>
                        <p class="text-6xl font-extrabold text-primary mb-6">
                            ₹7,999 <span class="text-xl font-medium text-gray-500">/ mo</span>
                        </p>
                        <ul class="space-y-3 text-gray-600 mb-8 flex-grow">
                            <li class="flex items-center"><span class="text-primary mr-2 text-xl">&#10003;</span> Everything in Gold</li>
                            <li class="flex items-center"><span class="text-primary mr-2 text-xl">&#10003;</span> Quarterly Bio-Metric Assessment</li>
                            <li class="flex items-center"><span class="text-primary mr-2 text-xl">&#10003;</span> Priority Class Booking</li>
                            <li class="flex items-center"><span class="text-primary mr-2 text-xl">&#10003;</span> Access to Private Lounge</li>
                        </ul>
                        <a href="#booking" class="select-plan-btn text-center mt-auto bg-gray-200 text-gray-800 font-semibold py-3 rounded-lg hover:bg-gray-300 transition duration-300">
                            Select Premium Plan
                        </a>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- --- -->
        <!-- Trainers Experience Section -->
        <!-- --- -->
        <section id="trainers" class="py-16 bg-gray-100">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-extrabold text-gray-900 text-center mb-4">Our Elite Training Team</h2>
                <p class="text-center text-lg text-gray-600 max-w-3xl mx-auto mb-12">Meet the experts who guide your flow and strength. Certified, experienced, and passionate about your results.</p>
                
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 text-center">
                    
                    <!-- Trainer 1: Yoga Specialist -->
                    <div class="bg-white p-6 rounded-xl shadow-lg border-t-4 border-secondary transition duration-300 hover:shadow-xl">
                        <img src="https://placehold.co/150x150/20b2aa/ffffff?text=KAVYA" alt="Trainer Kavya" class="w-32 h-32 rounded-full mx-auto mb-4 border-4 border-gray-100" width="128" height="128">
                        <h3 class="text-xl font-bold text-gray-900 mb-1">Kavya Sharma</h3>
                        <p class="text-secondary font-semibold">Senior Yoga Master</p>
                        <p class="text-sm text-gray-500 mt-1 mb-3">12+ Years Experience | RYT-500</p>
                        <p class="text-gray-600 text-sm">Specializes in restorative Hatha and Vinyasa sequencing for joint health.</p>
                    </div>
                    
                    <!-- Trainer 2: Strength Specialist -->
                    <div class="bg-white p-6 rounded-xl shadow-lg border-t-4 border-primary transition duration-300 hover:shadow-xl">
                        <img src="https://placehold.co/150x150/4f46e5/ffffff?text=ROHAN" alt="Trainer Rohan" class="w-32 h-32 rounded-full mx-auto mb-4 border-4 border-gray-100" width="128" height="128">
                        <h3 class="text-xl font-bold text-gray-900 mb-1">Rohan Kapoor</h3>
                        <p class="text-primary font-semibold">Bodybuilding & Power Coach</p>
                        <p class="text-sm text-gray-500 mt-1 mb-3">8+ Years Experience | Certified ISSA</p>
                        <p class="text-gray-600 text-sm">Focuses on hypertrophy, advanced compound lifting, and macro-nutrition.</p>
                    </div>
                    
                    <!-- Trainer 3: Hybrid Coach -->
                    <div class="bg-white p-6 rounded-xl shadow-lg border-t-4 border-accent transition duration-300 hover:shadow-xl">
                        <img src="https://placehold.co/150x150/fcd34d/4b5563?text=AMIT" alt="Trainer Amit" class="w-32 h-32 rounded-full mx-auto mb-4 border-4 border-gray-100" width="128" height="128">
                        <h3 class="text-xl font-bold text-gray-900 mb-1">Amit Singh</h3>
                        <p class="text-accent font-semibold">Mobility & Strength Hybrid</p>
                        <p class="text-sm text-gray-500 mt-1 mb-3">5+ Years Experience | NASM Certified</p>
                        <p class="text-gray-600 text-sm">Expert in combining strength routines with dynamic yoga warm-ups and cool-downs.</p>
                    </div>

                     <!-- Trainer 4: Female Strength Coach -->
                    <div class="bg-white p-6 rounded-xl shadow-lg border-t-4 border-primary transition duration-300 hover:shadow-xl">
                        <img src="https://placehold.co/150x150/ef4444/ffffff?text=PRIYA" alt="Trainer Priya" class="w-32 h-32 rounded-full mx-auto mb-4 border-4 border-gray-100" width="128" height="128">
                        <h3 class="text-xl font-bold text-gray-900 mb-1">Priya Patel</h3>
                        <p class="text-primary font-semibold">Women's Fitness & Conditioning</p>
                        <p class="text-sm text-gray-500 mt-1 mb-3">7+ Years Experience | Certified CSCS</p>
                        <p class="text-gray-600 text-sm">Dedicated to tailored strength programs for women's fitness goals and hormone optimization.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- --- -->
        <!-- Customer Ratings / Testimonials Section -->
        <!-- --- -->
        <section id="ratings" class="py-16 bg-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-extrabold text-gray-900 text-center mb-4">Customer Success Stories</h2>
                <p class="text-center text-lg text-gray-600 max-w-3xl mx-auto mb-12">Don't just take our word for it—see what our members say about their transformation at YOGA TIME.</p>

                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    
                    <!-- Review Card 1 (Yoga Focus) -->
                    <div class="bg-gray-50 p-6 rounded-xl shadow-lg border-l-4 border-secondary">
                        <div class="flex items-center mb-3">
                            <!-- 5-Star Rating SVG/Emoji -->
                            <span class="flex text-2xl text-accent">
                                &#9733;&#9733;&#9733;&#9733;&#9733;
                            </span>
                            <span class="ml-3 text-lg font-bold text-gray-900">5.0</span>
                        </div>
                        <p class="text-lg text-gray-800 italic mb-4">"My back pain is gone, and I can hold poses I never thought possible. The mobility training is game-changing!"</p>
                        <p class="font-semibold text-gray-700">- Anjali R. <span class="text-sm font-normal text-gray-500">(Gold Hybrid)</span></p>
                    </div>

                    <!-- Review Card 2 (Strength Focus) -->
                    <div class="bg-gray-50 p-6 rounded-xl shadow-lg border-l-4 border-primary">
                        <div class="flex items-center mb-3">
                            <!-- 5-Star Rating SVG/Emoji -->
                            <span class="flex text-2xl text-accent">
                                &#9733;&#9733;&#9733;&#9733;&#9733;
                            </span>
                            <span class="ml-3 text-lg font-bold text-gray-900">5.0</span>
                        </div>
                        <p class="text-lg text-gray-800 italic mb-4">"I've gained 5 kgs of muscle while improving my squat depth by 20%. The hybrid approach actually works!"</p>
                        <p class="font-semibold text-gray-700">- Vikas P. <span class="text-sm font-normal text-gray-500">(Premium Pro)</span></p>
                    </div>

                    <!-- Review Card 3 (Hybrid Focus) -->
                    <div class="bg-gray-50 p-6 rounded-xl shadow-lg border-l-4 border-accent">
                        <div class="flex items-center mb-3">
                            <!-- 5-Star Rating SVG/Emoji -->
                            <span class="flex text-2xl text-accent">
                                &#9733;&#9733;&#9733;&#9733;&#9733;
                            </span>
                            <span class="ml-3 text-lg font-bold text-gray-900">5.0</span>
                        </div>
                        <p class="text-lg text-gray-800 italic mb-4">"The trainers are experts in both fields. I feel stronger and more centered after every session. Highly recommend!"</p>
                        <p class="font-semibold text-gray-700">- Geetika S. <span class="text-sm font-normal text-gray-500">(Gold Hybrid)</span></p>
                    </div>
                </div>
            </div>
        </section>

        <!-- --- -->
        <!-- Branches and Location Section -->
        <!-- --- -->
        <section id="locations" class="py-16 bg-gray-50">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-extrabold text-gray-900 text-center mb-4">Our Branches & Locations</h2>
                <p class="text-center text-lg text-gray-600 max-w-3xl mx-auto mb-12">Find the YOGA TIME studio closest to you and start your fitness journey. Contact the Branch Manager directly for local queries.</p>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    
                    <!-- Salem Branch -->
                    <div class="bg-white p-6 rounded-xl shadow-xl border-t-4 border-primary transition duration-300 hover:shadow-2xl">
                        <div class="flex items-start space-x-4">
                            <span class="text-4xl text-primary">&#128204;</span> <!-- Pushpin icon -->
                            <div>
                                <h3 class="text-2xl font-bold text-gray-900 mb-2">Salem Branch</h3>
                                <p class="text-lg font-medium text-gray-700 mb-2">Near Sundharam Lodge Bus Stop</p>
                                <p class="text-gray-600">
                                    Second Floor, Opposite Building of PR3 Shop, Sundharam Lodge Bus Stop, Salem.
                                </p>
                                <!-- Manager Contact Information -->
                                <p class="text-gray-700 font-semibold mt-3">
                                    Branch Manager: <span class="text-primary">Tamil Selvan</span>
                                </p>
                                <p class="text-gray-700 font-semibold">
                                    Contact: <a href="tel:8668003763" class="text-primary hover:underline">8668003763</a>
                                </p>
                                <a href="https://maps.google.com/?q=Sundharam+Lodge+Bus+Stop+Salem" target="_blank" class="mt-3 inline-block text-sm text-primary hover:text-indigo-700 font-semibold transition duration-150">
                                    View on Map &rarr;
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Chennai Branch -->
                    <div class="bg-white p-6 rounded-xl shadow-xl border-t-4 border-secondary transition duration-300 hover:shadow-2xl">
                        <div class="flex items-start space-x-4">
                            <span class="text-4xl text-secondary">&#128204;</span> <!-- Pushpin icon -->
                            <div>
                                <h3 class="text-2xl font-bold text-gray-900 mb-2">Chennai Branch</h3>
                                <p class="text-lg font-medium text-gray-700 mb-2">Guindy Eekatuthagal</p>
                                <p class="text-gray-600">
                                    Near Metro Station, Guindy Eekatuthagal, Chennai.
                                </p>
                                <!-- Manager Contact Information -->
                                <p class="text-gray-700 font-semibold mt-3">
                                    Branch Manager: <span class="text-secondary">Naveen</span>
                                </p>
                                <p class="text-gray-700 font-semibold">
                                    Contact: <a href="tel:6380871177" class="text-secondary hover:underline">6380871177</a>
                                </p>
                                <a href="https://maps.google.com/?q=Guindy+Eekatuthagal+Chennai+Metro" target="_blank" class="mt-3 inline-block text-sm text-secondary hover:text-teal-600 font-semibold transition duration-150">
                                    View on Map &rarr;
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- --- -->
        <!-- Booking Board (Form) -->
        <!-- --- -->
        <section id="booking" class="py-16 bg-gray-100">
            <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-extrabold text-gray-900 text-center mb-4">Your Booking Board</h2>
                <p class="text-center text-lg text-gray-600 max-w-xl mx-auto mb-10">Select your membership, choose any add-ons, and secure your place.</p>

                 <!-- Final Success Message (Hidden by default) -->
                <div id="booking-final-message" class="mt-6 p-6 rounded-lg bg-green-100 text-green-800 text-center hidden" role="alert">
                    <h3 class="text-2xl font-bold mb-2">Booking Confirmed!</h3>
                    <p>We've received your details. A team member will contact you within 24 hours to finalize your enrollment and payment. Welcome to YOGA TIME!</p>
                </div>

                <!-- Booking Form -->
                <div id="booking-form-container" class="bg-white p-8 rounded-xl shadow-2xl border border-primary/20">
                    <form id="booking-form" class="space-y-6">
                        
                        <!-- 1. Customer Details -->
                        <h3 class="text-2xl font-bold text-gray-800 border-b pb-2 mb-4">1. Your Details</h3>
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                            <div>
                                <label for="customer-name" class="block text-sm font-medium text-gray-700">Full Name</label>
                                <input type="text" id="customer-name" name="customer-name" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-primary focus:ring-primary">
                            </div>
                            <div>
                                <label for="customer-email" class="block text-sm font-medium text-gray-700">Email Address</label>
                                <input type="email" id="customer-email" name="customer-email" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-primary focus:ring-primary">
                            </div>
                        </div>
                        <div>
                            <label for="customer-phone" class="block text-sm font-medium text-gray-700">Phone Number</label>
                            <input type="tel" id="customer-phone" name="customer-phone" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-primary focus:ring-primary">
                        </div>

                        <!-- 2. Plan Selection -->
                        <h3 class="text-2xl font-bold text-gray-800 border-b pb-2 mb-4 pt-6">2. Select Plan</h3>
                        <div>
                            <label for="selected-plan" class="block text-sm font-medium text-gray-700">Membership Plan</label>
                            <select id="selected-plan" name="selected-plan" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-primary focus:ring-primary bg-white">
                                <option value="">-- Please select a plan --</option>
                                <option value="Basic Plan:5999">Basic Flow - ₹5,999/mo</option>
                                <option value="Gold Plan:6999">Gold Hybrid - ₹6,999/mo</option>
                                <option value="Premium Plan:7999">Premium Pro - ₹7,999/mo</option>
                            </select>
                        </div>
                        
                        <!-- Trainer Add-on -->
                        <div class="flex items-start p-4 bg-primary/10 rounded-lg border border-primary/20">
                            <input type="checkbox" id="special-trainer-addon" name="special-trainer-addon" value="1999" class="mt-1 h-5 w-5 text-primary rounded border-gray-300 focus:ring-primary">
                            <div class="ml-3 text-sm">
                                <label for="special-trainer-addon" class="font-medium text-gray-900">Special Trainer Add-on</label>
                                <p class="text-gray-600">I require a dedicated, special trainer for 1:1 sessions. (Additional ₹1,999/mo)</p>
                            </div>
                        </div>

                        <!-- 3. Payment Method -->
                        <h3 class="text-2xl font-bold text-gray-800 border-b pb-2 mb-4 pt-6">3. Payment Method</h3>
                        <p class="text-sm text-gray-600 mb-3">How would you like to pay for your first month?</p>
                        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                            <!-- Credit Card -->
                            <label class="flex items-center space-x-2 p-3 bg-gray-50 rounded-lg border cursor-pointer hover:bg-gray-100">
                                <input type="radio" name="payment-method" value="Card" required class="h-4 w-4 text-primary focus:ring-primary">
                                <span class="text-sm font-medium text-gray-700">Card (Credit/Debit)</span>
                            </label>
                            <!-- UPI -->
                            <label class="flex items-center space-x-2 p-3 bg-gray-50 rounded-lg border cursor-pointer hover:bg-gray-100">
                                <input type="radio" name="payment-method" value="UPI" class="h-4 w-4 text-primary focus:ring-primary">
                                <span class="text-sm font-medium text-gray-700">UPI / QR Code</span>
                            </label>
                            <!-- Net Banking -->
                            <label class="flex items-center space-x-2 p-3 bg-gray-50 rounded-lg border cursor-pointer hover:bg-gray-100">
                                <input type="radio" name="payment-method" value="Net Banking" class="h-4 w-4 text-primary focus:ring-primary">
                                <span class="text-sm font-medium text-gray-700">Net Banking</span>
                            </label>
                            <!-- Cash -->
                            <label class="flex items-center space-x-2 p-3 bg-gray-50 rounded-lg border cursor-pointer hover:bg-gray-100">
                                <input type="radio" name="payment-method" value="Cash" class="h-4 w-4 text-primary focus:ring-primary">
                                <span class="text-sm font-medium text-gray-700">Cash (In-Studio)</span>
                            </label>
                        </div>


                        <!-- 4. Dynamic Summary and Total -->
                        <h3 class="text-2xl font-bold text-gray-800 border-b pb-2 mb-4 pt-6">4. Final Summary</h3>
                        
                        <!-- Discount Announcement -->
                        <div class="bg-accent/30 text-gray-800 p-3 rounded-lg text-center font-bold border-2 border-accent">
                            🎉 FIRST MONTH DISCOUNT APPLIED: SAVE 20% INSTANTLY!
                        </div>

                        <div class="bg-primary/10 p-6 rounded-lg">
                            <h4 class="text-xl font-bold text-gray-800 mb-3">Order Breakdown</h4>
                            <div class="space-y-2 text-lg">
                                <!-- Plan Price -->
                                <p class="flex justify-between">
                                    <span class="text-gray-600" id="summary-plan-name">No Plan Selected</span>
                                    <span class="font-semibold text-right" id="summary-plan-price">₹0.00</span>
                                </p>
                                <!-- Trainer Add-on Price -->
                                <p class="flex justify-between" id="summary-trainer-row">
                                    <span class="text-gray-600">Special Trainer Add-on</span>
                                    <span class="font-semibold" id="summary-trainer-price">₹0.00</span>
                                </p>
                                <hr class="border-t border-primary/40 my-3">
                                <!-- Subtotal -->
                                <p class="flex justify-between text-lg font-bold text-gray-800">
                                    <span>Subtotal (Before Discount)</span>
                                    <span id="summary-subtotal-price">₹0.00</span>
                                </p>
                                <!-- Discount -->
                                <p class="flex justify-between text-lg font-bold text-red-600">
                                    <span>First Booking Discount (20%)</span>
                                    <span id="summary-discount-price">- ₹0.00</span>
                                </p>
                                <hr class="border-t border-primary/40 my-3">
                                <!-- Final Total -->
                                <p class="flex justify-between text-3xl font-extrabold text-primary">
                                    FINAL MONTHLY FEE:
                                    <span id="summary-total-price">₹0.00</span>
                                </p>
                            </div>
                        </div>

                        <button type="submit" id="submit-booking" class="w-full bg-primary text-white font-semibold py-4 rounded-lg shadow-md hover:bg-indigo-700 transition duration-300 transform hover:scale-[1.01]">
                            Enroll Now & Finalize Booking
                        </button>
                    </form>
                </div>
            </div>
        </section>

        <!-- --- -->
        <!-- Queries / Contact Form Section -->
        <!-- --- -->
        <section id="queries" class="py-16 bg-white">
            <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-4xl font-extrabold text-gray-900 text-center mb-4">Have Questions?</h2>
                <p class="text-center text-lg text-gray-600 max-w-xl mx-auto mb-10">We're here to help you find the perfect program. Send us your queries!</p>

                <div class="bg-gray-50 p-8 rounded-xl shadow-2xl border border-secondary/20">
                    <form id="query-form" class="space-y-6">
                        <h3 class="text-xl font-bold text-gray-800 mb-4">Send Us a Message</h3>
                        <!-- Query Message Box (Feedback) -->
                        <div id="query-message-box" class="mt-6 p-4 rounded-lg hidden" role="alert"></div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                            <div>
                                <label for="query-name" class="block text-sm font-medium text-gray-700">Your Name</label>
                                <input type="text" id="query-name" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-secondary focus:ring-secondary">
                            </div>
                            <div>
                                <label for="query-email" class="block text-sm font-medium text-gray-700">Email Address</label>
                                <input type="email" id="query-email" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-secondary focus:ring-secondary">
                            </div>
                        </div>
                        <div>
                            <label for="query-subject" class="block text-sm font-medium text-gray-700">Subject</label>
                            <input type="text" id="query-subject" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-secondary focus:ring-secondary">
                        </div>
                        <div>
                            <label for="query-message" class="block text-sm font-medium text-gray-700">Your Query / Message</label>
                            <textarea id="query-message" rows="5" required class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm p-3 focus:border-secondary focus:ring-secondary"></textarea>
                        </div>

                        <button type="submit" class="w-full bg-secondary text-white font-semibold py-3 rounded-lg shadow-md hover:bg-teal-500 transition duration-300 transform hover:scale-[1.01]">
                            Send Query
                        </button>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <p>&copy; 2025 YOGA TIME: Flow & Strength. All rights reserved.</p>
            <div class="mt-2 text-sm text-gray-400">
                <a href="#plans" class="hover:text-primary mx-2">Plans</a> |
                <a href="#trainers" class="hover:text-primary mx-2">Trainers</a> |
                <a href="#locations" class="hover:text-primary mx-2">Locations</a> |
                <a href="mailto:info@yogatime.com" class="hover:text-primary mx-2">Email Us</a>
            </div>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', () => {

            // --- Elements ---
            const mobileMenuBtn = document.getElementById('mobile-menu-btn');
            const mobileMenu = document.getElementById('mobile-menu');
            const planCards = document.querySelectorAll('.plan-card');
            const selectPlanBtns = document.querySelectorAll('.select-plan-btn');
            const bookingForm = document.getElementById('booking-form');
            const queryForm = document.getElementById('query-form');
            const selectedPlanSelect = document.getElementById('selected-plan');
            const specialTrainerCheckbox = document.getElementById('special-trainer-addon');
            const bookingFinalMessage = document.getElementById('booking-final-message');
            const bookingFormContainer = document.getElementById('booking-form-container');

            // --- Pricing Elements ---
            const summaryPlanName = document.getElementById('summary-plan-name');
            const summaryPlanPrice = document.getElementById('summary-plan-price');
            const summaryTrainerRow = document.getElementById('summary-trainer-row');
            const summaryTrainerPrice = document.getElementById('summary-trainer-price');
            // New elements for discount logic
            const summarySubtotalPrice = document.getElementById('summary-subtotal-price');
            const summaryDiscountPrice = document.getElementById('summary-discount-price');
            const summaryTotalPrice = document.getElementById('summary-total-price');

            // --- Constants ---
            const TRAINER_ADDON_PRICE = 1999;
            // The BASE_PRICES object is no longer strictly needed but kept for reference
            const BASE_PRICES = {
                "Basic Plan:5999": 5999,
                "Gold Plan:6999": 6999,
                "Premium Plan:7999": 7999
            };
            const FIRST_BOOKING_DISCOUNT_RATE = 0.20; // 20%

            // --- Helper Functions ---

            function formatINR(amount) {
                // Ensure amount is a number and round to 2 decimal places for display
                amount = parseFloat(amount).toFixed(2);
                return new Intl.NumberFormat('en-IN', {
                    style: 'currency',
                    currency: 'INR',
                    minimumFractionDigits: 2
                }).format(amount);
            }

            function displayQueryMessage(message, isSuccess) {
                const msgBox = document.getElementById('query-message-box');
                msgBox.textContent = message;
                msgBox.classList.remove('hidden', 'bg-red-100', 'text-red-800', 'bg-green-100', 'text-green-800');

                if (isSuccess) {
                    msgBox.classList.add('bg-green-100', 'text-green-800');
                } else {
                    msgBox.classList.add('bg-red-100', 'text-red-800');
                }

                setTimeout(() => {
                    msgBox.classList.add('hidden');
                }, 5000);
            }

            // --- Core Logic: Update Summary ---

            function updateBookingSummary() {
                const selectedPlanValue = selectedPlanSelect.value;
                const isAddonSelected = specialTrainerCheckbox.checked;

                let planName = "No Plan Selected";
                let planPrice = 0;
                let addonPrice = 0;

                if (selectedPlanValue) {
                    const [name, price] = selectedPlanValue.split(':');
                    planName = name;
                    planPrice = parseFloat(price);
                }

                if (isAddonSelected) {
                    addonPrice = TRAINER_ADDON_PRICE;
                    // Change color to indicate it's an added cost
                    summaryTrainerPrice.classList.remove('text-red-600');
                    summaryTrainerPrice.classList.add('text-primary');
                } else {
                    addonPrice = 0;
                    // Reset color
                    summaryTrainerPrice.classList.remove('text-primary');
                    summaryTrainerPrice.classList.add('text-red-600'); 
                }
                
                // 1. Calculate Subtotal
                const subtotal = planPrice + addonPrice;

                // 2. Calculate Discount
                const discountAmount = subtotal * FIRST_BOOKING_DISCOUNT_RATE;

                // 3. Calculate Final Total
                const finalTotal = subtotal - discountAmount;

                // --- Update UI elements ---
                summaryPlanName.textContent = planName;
                summaryPlanPrice.textContent = formatINR(planPrice);

                summaryTrainerPrice.textContent = formatINR(addonPrice);
                // Toggle visibility of addon row based on if there's an addon
                summaryTrainerRow.style.display = addonPrice > 0 ? 'flex' : 'flex';
                summaryTrainerPrice.classList.toggle('opacity-50', addonPrice === 0);

                // New discount display updates
                summarySubtotalPrice.textContent = formatINR(subtotal);
                summaryDiscountPrice.textContent = `- ${formatINR(discountAmount)}`;
                summaryTotalPrice.textContent = formatINR(finalTotal);

                // Ensure the submit button is enabled only if a plan is selected
                document.getElementById('submit-booking').disabled = planPrice === 0;
            }


            // --- Event Listeners ---

            // 1. Mobile Menu Toggle
            mobileMenuBtn.addEventListener('click', () => {
                const isExpanded = mobileMenuBtn.getAttribute('aria-expanded') === 'true' || false;
                mobileMenuBtn.setAttribute('aria-expanded', !isExpanded);
                mobileMenu.classList.toggle('hidden');
            });
            document.querySelectorAll('nav a').forEach(link => {
                link.addEventListener('click', () => {
                    if (mobileMenu.classList.contains('hidden')) return;
                    mobileMenu.classList.add('hidden');
                    mobileMenuBtn.setAttribute('aria-expanded', 'false');
                });
            });

            // 2. Plan Card Click / Button Click to Select Plan
            [...planCards, ...selectPlanBtns].forEach(el => {
                el.addEventListener('click', (e) => {
                    let planName, planPrice;

                    // Determine if the click was on the card or the button
                    if (el.classList.contains('plan-card')) {
                        planName = el.dataset.planName;
                        planPrice = el.dataset.planPrice;
                    } else if (el.classList.contains('select-plan-btn')) {
                        // Traverse up to find the plan-card parent
                        const parentCard = e.target.closest('.plan-card');
                        if (parentCard) {
                            planName = parentCard.dataset.planName;
                            planPrice = parentCard.dataset.planPrice;
                        }
                    }

                    if (planName && planPrice) {
                        const planValue = `${planName}:${planPrice}`;
                        selectedPlanSelect.value = planValue;
                        updateBookingSummary();
                        // Scroll to booking section
                        document.getElementById('booking').scrollIntoView({ behavior: 'smooth' });
                    }
                });
            });

            // 3. Manual Select and Checkbox Changes
            selectedPlanSelect.addEventListener('change', updateBookingSummary);
            specialTrainerCheckbox.addEventListener('change', updateBookingSummary);

            // 4. Booking Form Submission (Final Simulation)
            bookingForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                const selectedPlanValue = selectedPlanSelect.value;
                const selectedPayment = document.querySelector('input[name="payment-method"]:checked');

                if (selectedPlanValue === "") {
                    displayQueryMessage('Please select a membership plan before submitting.', false);
                    document.getElementById('plans').scrollIntoView({ behavior: 'smooth' });
                    return;
                }
                
                if (!selectedPayment) {
                    displayQueryMessage('Please select a payment method.', false);
                    document.querySelector('input[name="payment-method"]').focus();
                    return;
                }
                
                // SIMULATE SUCCESS
                bookingFormContainer.classList.add('hidden');
                bookingFinalMessage.classList.remove('hidden');
                
                // Scroll to the success message
                bookingFinalMessage.scrollIntoView({ behavior: 'smooth', block: 'center' });
                bookingForm.reset();
                // Reset summary to initial state after success
                setTimeout(updateBookingSummary, 50); 
            });

            // 5. Query Form Submission (Simulation)
            queryForm.addEventListener('submit', function(e) {
                e.preventDefault();
                const name = document.getElementById('query-name').value;
                
                if (name) {
                    const message = `Query Received! Thank you, ${name}. We will get back to you within 24 hours.`;
                    displayQueryMessage(message, true);
                    queryForm.reset();
                } else {
                    displayQueryMessage('Please enter your name.', false);
                }
            });

            // Initialize summary on load
            updateBookingSummary();
        });
    </script>
</body>
</html>
