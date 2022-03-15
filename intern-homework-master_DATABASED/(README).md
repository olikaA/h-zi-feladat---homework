<p align="center"><img src="https://brokerchooser.com/images/brokerchooser-logo.png" width="400"></p>

# BrokerChooser homework description

This Laravel-based project contains a simple one-page website that aims to present some data about various brokers.

## What's already done

A class containing some fictional broker information is available under the `app/Repositories/BrokerRepository.php` class.
This class returns the entire data set that you will need to work on.

The webpage's look is ready and is filled with some dummy information.

## Your task
Your task consists of two parts: The first is to present the actual data on the webpage, which needs to be categorized into 3 sections:

1. A list of the top 3 brokers of 2020 based on overall score (in descending order).
2. A list of all the stock brokers ordered by overall score (in descending order).
3. A list of brokers with no inactivity fee ordered by overall score (in descending order).

Your second task is to create an HTTP GET API endpoint that returns a single, randomly chosen broker's data in JSON format.

## Some hints

* Try to rely on Laravel specific solutions instead of pure PHP. Check out the <a href="https://laravel.com/docs/8.x/">Laravel documentation</a> for help.
* The <a href="https://laracasts.com/series/laravel-8-from-scratch">Laravel course found at Laracasts</a> can help you in various topics related to Laravel. Of course, we do not expect you to watch the entire course, we just think it might be useful in case you need help. It is entirely optional.

## Setting up the project for Ubuntu/MacOS users

1. Install Docker
2. Create the `.env` environment file by copying the `.env.example` file.

Run the following commands from the project's root directory:
1. `docker run --rm -u "$(id -u):$(id -g)" -v $(pwd):/var/www/html -w /var/www/html laravelsail/php81-composer:latest composer install --ignore-platform-reqs && php artisan key:generate`
2. `./vendor/bin/sail up`

The application will be available on http://localhost:80.

## Setting up the project for Windows users

1. Install PHP 8.1 from https://windows.php.net/download/. Download the thread safe version (ZIP file).

2. Create a new `php` folder in the root of your `C:\` drive and extract the ZIP's contents into it.

3. Create a copy of the `C:\php\php.ini-development` file as `C:\php\php.ini`.

4. Open the `php.ini` file, and enable the following extensions by removing leading semicolons from these lines.
    ```
    extension=curl
    extension=fileinfo
    extension=mbstring
    extension=openssl
    ```

5. Click the Windows Start button and type `environment`, then click `Edit the system environment variables`. Select the `Advanced` tab, and click the `Environment Variables...` button.
   Scroll down the `System variables` list and click `Path` followed by the `Edit` button. Click `New` and add `C:\php`.

6. You should now have a properly installed PHP. Test it in a new terminal by running the command `php -v`. This command should print out the installed PHP version.

7. [Download](https://getcomposer.org/Composer-Setup.exe) and run the Composer installer.

8. Test it in a new terminal by running the command `composer -V`. This command should print out the installed Composer version.

9. In the unzipped project folder create the `.env` environment file by copying the `.env.example` file, then run these commands:
    ```
    cd <project-folder-name>
    composer install
    php artisan key:generate
    ```

10. Run `php artisan serve` to start the application. It will be available on http://localhost:8000.

## Submitting your solution

Please submit your solution in a private Git repository, with your changes clearly separated from the starting code using commits.
