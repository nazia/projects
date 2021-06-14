<html>
<head>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="css/style.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
          
          </head>
<body>
<h2>Hello World!</h2>
<a href="bootstrap.html">Bootstrap</a>
 <div class="row">
    <div class="input-field col s6">
      <input value="Alvin" id="first_name2" type="text" class="validate">
      <label class="active" for="first_name2">First Name</label>
    </div>
  </div>
 <div class="row">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="first_name" type="text" class="validate">
          <label for="first_name">First Name</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate">
          <label for="last_name">Last Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input disabled value="I am not editable" id="disabled" type="text" class="validate">
          <label for="disabled">Disabled</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
      </div>
      <div class="row">
        <div class="col s12">
          This is an inline input field:
          <div class="input-field inline">
            <input id="email_inline" type="email" class="validate">
            <label for="email_inline">Email</label>
            <span class="helper-text" data-error="wrong" data-success="right">Helper text</span>
          </div>
        </div>
      </div>
    </form>
  </div>
<br>
<div class="input-field col s12">
    <select>
      <option value="" disabled selected>Choose your option</option>
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
    </select>
    <label>Materialize Select</label>
  </div>
<br>
  <div class="input-field col s12">
    <select multiple>
      <option value="" disabled selected>Choose your option</option>
      <option value="1">Option 1</option>
      <option value="2">Option 2</option>
      <option value="3">Option 3</option>
    </select>
    <label>Materialize Multiple Select</label>
  </div>
<br>
  <div class="input-field col s12">
    <select>
      <optgroup label="team 1">
        <option value="1">Option 1</option>
        <option value="2">Option 2</option>
      </optgroup>
      <optgroup label="team 2">
        <option value="3">Option 3</option>
        <option value="4">Option 4</option>
      </optgroup>
    </select>
    <label>Optgroups</label>
  </div>
<br>
  <div class="input-field col s12 m6">
    <select class="icons">
      <option value="" disabled selected>Choose your option</option>
      <option value="" data-icon="images/sea.jpg">example 1</option>
      <option value="" data-icon="images/office.jpg">example 2</option>
      <option value="" data-icon="images/yuna.jpg">example 3</option>
    </select>
    <label>Images in select</label>
  </div><br>
  <div class="input-field col s12 m6">
    <select class="icons">
      <option value="" disabled selected>Choose your option</option>
      <option value="" data-icon="images/sample-1.jpg" class="left">example 1</option>
      <option value="" data-icon="images/office.jpg" class="left">example 2</option>
      <option value="" data-icon="images/yuna.jpg" class="left">example 3</option>
    </select>
    <label>Images in select</label>
  </div>
<br>
  <label>Browser Select</label>
  <select class="browser-default">
    <option value="" disabled selected>Choose your option</option>
    <option value="1">Option 1</option>
    <option value="2">Option 2</option>
    <option value="3">Option 3</option>
  </select><br>
 <form action="#">
    <p>
      <label>
        <input name="group1" type="radio" checked />
        <span>Red</span>
      </label>
    </p>
    <p>
      <label>
        <input name="group1" type="radio" />
        <span>Yellow</span>
      </label>
    </p>
    <p>
      <label>
        <input class="with-gap" name="group1" type="radio"  />
        <span>Green</span>
      </label>
    </p>
    <p>
      <label>
        <input name="group1" type="radio" disabled="disabled" />
        <span>Brown</span>
      </label>
    </p>
  </form>
  <br>
  <input type="text" class="datepicker">

<div class="chip">
    <img src="images/sea.jpg" alt="Contact Person">
    Jane Doe
  </div>
<form action="#">
    <p>
      <label>
        <input type="checkbox" />
        <span>Red</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" checked="checked" />
        <span>Yellow</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" class="filled-in" checked="checked" />
        <span>Filled in</span>
      </label>
    </p>
    <p>
      <label>
        <input id="indeterminate-checkbox" type="checkbox" />
        <span>Indeterminate Style</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" checked="checked" disabled="disabled" />
        <span>Green</span>
      </label>
    </p>
    <p>
      <label>
        <input type="checkbox" disabled="disabled" />
        <span>Brown</span>
      </label>
    </p>
  </form>


  <div class="row">
    <div class="col s12">
      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">textsms</i>
          <input type="text" id="autocomplete-input" class="autocomplete">
          <label for="autocomplete-input">Autocomplete</label>
        </div>
      </div>
    </div>
  </div>
<div class="progress">
      <div class="indeterminate"></div>
  </div>
  <nav class="nav-extended">
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Logo</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a href="#test1">Test 1</a></li>
        <li class="tab"><a class="active" href="#test2">Test 2</a></li>
        <li class="tab disabled"><a href="#test3">Disabled Tab</a></li>
        <li class="tab"><a href="#test4">Test 4</a></li>
      </ul>
    </div>
  </nav>

  <ul class="sidenav" id="mobile-demo">
    <li><a href="sass.html">Sass</a></li>
    <li><a href="badges.html">Components</a></li>
    <li><a href="collapsible.html">JavaScript</a></li>
  </ul>

  <div id="test1" class="col s12">Test 1</div>
  <div id="test2" class="col s12">Test 2</div>
  <div id="test3" class="col s12">Test 3</div>
  <div id="test4" class="col s12">Test 4</div>
 <nav>
    <div class="nav-wrapper">
      <a href="#!" class="brand-logo center">Logo</a>
      <ul class="left hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li class="active"><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
  </nav>
  <i class="material-icons">add</i>

        <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>
  <ul class="collection">
    <li class="collection-item avatar">
      <img src="images/sea.jpg" alt="" class="circle">
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle">folder</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle green">insert_chart</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle red">play_arrow</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
  </ul>
 <div class="row">
    <div class="col s12 m5">
      <div class="card-panel teal">
        <span class="white-text">I am a very simple card. I am good at containing small bits of information.
        I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
        </span>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/sea.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
      <p><a href="#">This is a link</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
      <p>Here is some more information about this product that is only revealed once clicked on.</p>
    </div>
  </div>
<div class="col s12 m7">
    <h2 class="header">Horizontal Card</h2>
    <div class="card horizontal">
      <div class="card-image">
        <img src="https://lorempixel.com/100/190/nature/6">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p>I am a very simple card. I am good at containing small bits of information.</p>
        </div>
        <div class="card-action">
          <a href="#">This is a link</a>
        </div>
      </div>
    </div>
  </div>
  
 <div class="row">
    <div class="col s12 m6">
      <div class="card">
        <div class="card-image">
          <img src="images/sea.jpg">
          <span class="card-title">Card Title</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
        </div>
      </div>
    </div>
  </div>
  <br>
 <nav>
    <div class="nav-wrapper">
      <div class="col s12">
        <a href="#!" class="breadcrumb">First</a>
        <a href="#!" class="breadcrumb">Second</a>
        <a href="#!" class="breadcrumb">Third</a>
      </div>
    </div>
  </nav>
  <button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
  <a class="waves-effect waves-light btn-large">Button</a>
<a class="waves-effect waves-light btn-large"><i class="material-icons left">cloud</i>button</a>
<a class="waves-effect waves-light btn-large"><i class="material-icons right">cloud</i>button</a>
  
  <a class="waves-effect waves-teal btn-flat">Button</a>

  <a class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
  <a class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
  <a class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>

<a class="waves-effect waves-light btn">button</a>
<a class="waves-effect waves-light btn"><i class="material-icons left">cloud</i>button</a>
<a class="waves-effect waves-light btn"><i class="material-icons right">cloud</i>button</a>
  
  
<span class="new badge" data-badge-caption="custom caption">4</span>
  <span class="badge" data-badge-caption="custom caption">4</span>
   
   
<ul class="collapsible">
  <li>
    <div class="collapsible-header">
      <i class="material-icons">this is header</i>
      First
      <span class="new badge">4</span></div>
    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
  </li>
  <li>
    <div class="collapsible-header">
      <i class="material-icons">place</i>
      Second
      <span class="badge">1</span></div>
    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
  </li>
</ul>
<br>
<nav>
  <div class="nav-wrapper">
    <a href="" class="brand-logo">Logo</a>
    <ul id="nav-mobile" class="right hide-on-med-and-down">
      <li><a href="">sass</a></li>
      <li><a href="">sass <span class="new badge">4</span></a></li>
      <li><a href="">sass</a></li>
    </ul>
  </div>
</nav>
 <div class="collection">
    <a href="#!" class="collection-item"><span class="badge">1</span>Alan</a>
    <a href="#!" class="collection-item"><span class="new badge">4</span>Alan</a>
    <a href="#!" class="collection-item">Alan</a>
    <a href="#!" class="collection-item"><span class="badge">14</span>Alan</a>
  </div>
  <div class="row">
    <div class="col s12 m5">
      <div class="card-panel teal">
        <span class="white-text">I am a very simple card. I am good at containing small bits of information.
        I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
        </span>
      </div>
    </div>
  </div>
<div class="card small">
    <!-- Card Content -->
  </div>
  
  <div class="card">
    <div class="card-content">
      <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
    </div>
    <div class="card-tabs">
      <ul class="tabs tabs-fixed-width">
        <li class="tab"><a href="#test4">Test 1</a></li>
        <li class="tab"><a class="active" href="#test5">Test 2</a></li>
        <li class="tab"><a href="#test6">Test 3</a></li>
      </ul>
    </div>
    <div class="card-content grey lighten-4">
      <div id="test4">Test 1</div>
      <div id="test5">Test 2</div>
      <div id="test6">Test 3</div>
    </div>
  </div>
<div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/sea.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
      <p><a href="#">This is a link</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
      <p>Here is some more information about this product that is only revealed once clicked on.</p>
    </div>
  </div>
<a class="btn-floating pulse"><i class="material-icons">+</i></a>
<a class="btn-floating btn-large pulse"><i class="material-icons">*</i></a>
<a class="btn-floating btn-large cyan pulse"><i class="material-icons">-</i></a>
<div class="col s12 m2">
      <p class="z-depth-1">z-depth-1</p>
    </div>
    <div class="col s12 m2">
      <p class="z-depth-2">z-depth-2</p>
    </div>
    <div class="col s12 m2">
      <p class="z-depth-3">z-depth-3</p>
    </div>
    <div class="col s12 m2">
      <p class="z-depth-4">z-depth-4</p>
    </div>
    <div class="col s12 m2">
      <p class="z-depth-5">z-depth-5</p>
    </div>
<video class="responsive-video" controls>
    <source src="movie.mp4" type="video/mp4">
  </video>
<table class="striped highlight centered">
        <thead>
          <tr>
              <th>Name</th>
              <th>Item Name</th>
              <th>Item Price</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Alvin</td>
            <td>Eclair</td>
            <td>$0.87</td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>$3.76</td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>$7.00</td>
          </tr>
        </tbody>
      </table>
      
      <!-- Scaled in -->
  <a id="scale-demo" href="#!" class="btn-floating btn-large scale-transition">
    <i class="material-icons">+</i>
  </a>

  <!-- Scaled out -->
  <a id="scale-demo" href="#!" class="btn-floating btn-large scale-transition scale-out">
    <i class="material-icons">add</i>
  </a>
  <div class="row">
      <div class="col s1">1</div>
      <div class="col s1">2</div>
      <div class="col s1">3</div>
      <div class="col s1">4</div>
      <div class="col s1">5</div>
      <div class="col s1">6</div>
      <div class="col s1">7</div>
      <div class="col s1">8</div>
      <div class="col s1">9</div>
      <div class="col s1">10</div>
      <div class="col s1">11</div>
      <div class="col s1">12</div>
    </div>
    <div class="divider"></div>
  <div class="section">
    <h5>Section 1</h5>
    <p>Stuff</p>
  </div>
  <div class="divider"></div>
  <div class="section">
    <h5>Section 2</h5>
    <p>Stuff</p>
  </div>
  <div class="divider"></div>
  <div class="section">
    <h5>Section 3</h5>
    <p>Stuff</p>
  </div>
    <div class="card-panel hoverable"> Hoverable Card Panel</div>
  
  
  <div class="col s12 m8 offset-m2 l6 offset-l3">
        <div class="card-panel grey lighten-5 z-depth-1">
          <div class="row valign-wrapper">
            <div class="col s2">
              <img src="images/sea.jpg" alt="" class="circle responsive-img"> <!-- notice the "circle" class -->
            </div>
            <div class="col s10">
              <span class="black-text">
                This is a square image. Add the "circle" class to it to make it appear circular.
              </span>
            </div>
          </div>
        </div>
      </div>
</body>
</html>
