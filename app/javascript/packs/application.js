// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// custom js. we need to call them explicity to use them.
require("packs/jquery-3.2.1.min.js")
require("packs/bootstrap.min.js")
require("packs/functions.js")
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require turbolinks

 // require ("highcharts/highcharts")
import Highcharts from 'highcharts'
import HighchartsMore from 'highcharts/highcharts-more';
import HighchartsSolidGauge from 'highcharts/modules/solid-gauge';
import HighchartsExporting from 'highcharts/modules/exporting';

window.jQuery = jQuery
window.$ = $
window.Highcharts = Highcharts;
//= require highcharts/highcharts-more
//= require highcharts/highstock

// import '../stylesheets/application'
// import 'bootstrap/dist/js/bootstrap'

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
