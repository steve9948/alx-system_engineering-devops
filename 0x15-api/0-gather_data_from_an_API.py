#!/usr/bin/python3
"""Module to retrieve and display TODO list progress for a given employee ID."""
import requests
import sys


def main():
    """Retrieve and display TODO list progress."""
    employee_id = sys.argv[1]
    url = 'https://jsonplaceholder.typicode.com/'
    users_endpoint = f'users?id={employee_id}'
    todos_endpoint = f'todos?userId={employee_id}'
    done_todos_endpoint = f'{todos_endpoint}&completed=true'

    # Retrieve user information
    user_data = requests.get(f'{url}{users_endpoint}').json()
    employee_name = user_data[0].get("name")

    # Retrieve TODO list information
    todos_data = requests.get(f'{url}{todos_endpoint}').json()
    done_todos_data = requests.get(f'{url}{done_todos_endpoint}').json()
    num_done_tasks = len(done_todos_data)
    total_num_tasks = len(todos_data)

    # Print employee TODO list progress
    print(f'Employee {employee_name} is done with tasks({num_done_tasks}/{total_num_tasks}):')
    for task in done_todos_data:
        print("\t" + task.get("title"))


if __name__ == "__main__":
    main()

