# Project 5 - *Bereal-Clone*

Submitted by: **Jiaying Chen**

**Bereal-Clone** is an app that allows users to create account, log into existing account, and post things on their feed.  

Time spent: **3** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] User can register a new account
- [x] User can log in with newly created account
- [x] App has a feed of posts when user logs in
- [x] User can upload a new post which takes in a picture from photo library and a caption	
 
The following **optional** features are implemented:

- [ ] Users can pull to refresh their feed and see a loading indicator
- [ ] Users can infinite-scroll in their feed to see past the 10 most recent photos
- [ ] Users can see location and time of photo upload in the feed	
- [ ] User is able to logout
- [x] User stays logged in when app is closed and open again	


The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![alt text](https://github.com/rcwoshimao/BeReal-Clone/blob/main/3OV6f.gif)

<img src='https://github.com/rcwoshimao/BeReal-Clone/blob/main/3OV6f.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /> 


GIF created with GIFER 

## Notes

In PostViewController, the original given line for ```provider.loadObject``` did not work. Here's the fix: 
### Original:
```Swift
 provider.loadObject(ofClass: UIImage.self) { [weak self] object, error in
  // Make sure we can cast the returned object to a UIImage
     guard let image = object as? UIImage else {
     // ❌ Unable to cast to UIImage
         self?.showAlert(error)
         return
  }
```

### Fixed:
```Swift
//took out the "error":
provider.loadObject(ofClass: UIImage.self) { [weak self] object, _ in
    guard let image = object as? UIImage else {
    self?.showAlert()
    return
}


```
## License

    Copyright [2023] [Jiaying Chen]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
