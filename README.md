# Order Tracker App

This is an order tracking application written in Flutter. It uses Ably for real-time updates on order statuses. Please follow the instructions below to set up the project and configure your API keys.

## Getting Started

### Prerequisites

- Flutter version 3.10.1
- FVM (Flutter Version Management)
- Dotenv (for handling environment variables)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/order-tracker.git
   cd order-tracker

2. Ensure you have FVM installed:

     ```bash
   fvm install 3.10.1
   fvm use 3.10.1

3. Create a .env file in the root of the project:

     ```bash
   ABLY_API_KEY=your_ably_api_key_here

4. Run the app:

    
     ```bash
   flutter pub get
    flutter run

The app should now be running with your provided API key.

## Ably API Key
To obtain an Ably API key, sign up for an account on the Ably website. Once you have an account, you can create a new app and obtain the API key from the Ably dashboard.

## Questions and Issues
If you have any questions or encounter issues, feel free to open an issue in the GitHub repository.

Happy coding!

