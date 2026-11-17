import unittest

from app import greet


class TestApp(unittest.TestCase):
    def test_greet(self):
        self.assertEqual(greet("World"), "Hello, World from Joe Dib!")

    def test_greet_name(self):
        self.assertEqual(greet("Joe"), "Hello, Joe from Joe Dib!")


if __name__ == "__main__":
    unittest.main()
