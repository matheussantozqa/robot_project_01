# Robot Framework Login Test Suite

This repository contains a simple, yet comprehensive, automated test suite for a login feature using **Robot Framework** and **SeleniumLibrary**. The tests are designed to validate various login scenarios on the [Sauce Demo website](https://www.saucedemo.com).

## 🚀 Features

The test suite covers the following login scenarios:

*   **Valid Login:** Successful login with correct credentials.
*   **Unsuccessful Login - Empty Fields:** Attempting to log in with both username and password fields empty.
*   **Unsuccessful Login - Missing Credentials:** Attempting to log in with either the username or password missing.
*   **Unsuccessful Login - Wrong Credentials:** Attempting to log in with invalid username and password combinations.

## 🛠️ Prerequisites

To run these tests, you need to have the following installed:

*   **Python 3.x**
*   **Robot Framework**
*   **SeleniumLibrary**
*   A compatible web browser (e.g., Chrome, Firefox). The tests are configured to run on **Chrome** by default.

## 📦 Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/matheussantozqa/robot_project_01.git
    cd robot_project_01
    ```

2.  **Install the required libraries:**
    ```bash
    pip install robotframework robotframework-seleniumlibrary
    ```

    *Note: You may also need to install the appropriate web driver (e.g., `chromedriver`) and ensure it is accessible in your system's PATH, or use the `WebDriverManager` feature of SeleniumLibrary.*

## 🏃 How to Run

Execute the test suite from the project root directory:

```bash
robot test/login_steps.robot
```

### 📊 Results

After execution, the results will be generated in the project root directory:

*   `log.html`: Detailed execution log.
*   `report.html`: High-level test report.
*   `output.xml`: XML output file for continuous integration tools.

## 📂 Project Structure

The project is organized as follows:

| Directory | Description |
| :--- | :--- |
| `test/` | Contains the main Robot Framework test files (`.robot`). |
| `resources/` | Contains the keyword definition files (`.resource`) that implement the test steps. |
| `variables/` | Contains the Python file (`variables.py`) for storing test data (URLs, credentials, error messages). |
| `results/` | Contains the output from previous test runs. |

---

