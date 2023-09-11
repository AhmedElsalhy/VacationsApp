import 'package:flutter/material.dart';
import 'package:vacations_app/views/widgets/our_features_details.dart';

const List<Widget> listOfFeatureDetails = [
  OurFeaturesDetails(
    featureIcon: 'requestFeature',
    featureName: 'Request Vacation Remotely',
    detailsAboutFeature:
    'Request your Vacation, Track The\nrequest and Receive the response.',
    moreDetailsAboutFeature:
    'Each request will follow the\nworkflow to the mangers for\napproval.',
    smallCirclePosition: 0,
    visibleSmallCircle: true,
  ),
  OurFeaturesDetails(
    featureIcon: 'historyFeature',
    featureName: 'Vacations History',
    detailsAboutFeature: 'You can view all your vacations\n'
        'and have statistics for better\n'
        'overview of your vacation flow\n'
        'You can filter your vacations\n'
        'according to your preferable\n'
        'aspects.',
    smallCirclePosition: 80,
    moreDetailsAboutFeature: '',
    visibleSmallCircle: false,
  ),
  OurFeaturesDetails(
    featureIcon: 'noteFeature',
    featureName: 'Edit & Delete Requests',
    detailsAboutFeature: 'You can delete or modify any\n'
        'vacation request as long as no \n'
        'action was taken.',
    smallCirclePosition: 20,
    moreDetailsAboutFeature: '',
    visibleSmallCircle: false,
  )
];
