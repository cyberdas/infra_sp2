import django_filters

from .models import Title


class TitlesFilter(django_filters.FilterSet):

    name = django_filters.CharFilter(field_name='name', lookup_expr='contains')
    genre = django_filters.CharFilter(field_name='genre__slug')
    category = django_filters.CharFilter(field_name='category__slug')
    year = django_filters.CharFilter(field_name='year')

    class Meta:
        model = Title
        fields = ('name', 'genre', 'category', 'year')
