import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import './src/jquery'
import './src/jquery-ui'

$( function() {
    $( "#dialog" ).dialog();
  } );