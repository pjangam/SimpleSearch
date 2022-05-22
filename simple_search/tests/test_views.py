import unittest

from django.urls import reverse
from rest_framework import status
from rest_framework.test import APIClient


class TestListView(unittest.TestCase):
    def setUp(self):
        self.client = APIClient()

    def test_get_all_documents_should_return_documents(self):
        response = self.client.get(
            path=reverse('document_list'),
            content_type='application/json',
            **{'accept': 'application/json'}
        )

        self.assertEqual(status.HTTP_200_OK, response.status_code)
