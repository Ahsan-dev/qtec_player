# Qtec Player

A new Flutter project for the assesment task getting from QTec Solutions implemented a video player with videos list.

### Setup:
Flutter Version: 3.7.0 </br>
Dart Version: 2.19.0

### Tools:
1. GetX is used as a powerfull tool for state mangement, internal app routing and app structure.
2. Get-Cli is used as command tool for GetX.
3. I have used Dio tool for Rest API calling.
4. Video Player tool for video play back

### Summarizing:
- Play List page is constructed fetching all the trending video data through Rest API calling. While calling is in progress a loading screen splashes until data loaded.
- While clicking on any item it redirects to the play deatils page along with that video item data.
- Getting that data from list page, play details page rendered.

<img src="https://github.com/Ahsan-dev/qtec_player/assets/46849763/e08889a8-9473-4bc7-8835-781e00a89cd7.png" width="150">
<img src="https://github.com/Ahsan-dev/qtec_player/assets/46849763/ee9b1daf-623e-4185-bc40-390d8a7a7ed5.png" width="150">
<img src="https://github.com/Ahsan-dev/qtec_player/assets/46849763/128679ed-bf4c-4d16-8945-bdd1d19014a5.png" width="150">
<img src="https://github.com/Ahsan-dev/qtec_player/assets/46849763/21f679cf-c43b-48d9-b437-013fa6d9efd6.png" width="150">

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
