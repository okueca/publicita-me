# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "stimulus-rails-nested-form", to: "https://ga.jspm.io/npm:stimulus-rails-nested-form@4.1.0/dist/stimulus-rails-nested-form.mjs"
pin "@rails/actiontext", to: "actiontext.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "@rails/ujs", to: "@rails--ujs.js" # @7.1.3
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true
pin "mapkick/bundle", to: "mapkick.bundle.js"
pin "leaflet", to: "https://ga.jspm.io/npm:leaflet@1.9.4/dist/leaflet-src.js"
pin "leaflet-css", to: "https://ga.jspm.io/npm:leaflet-css@0.1.0/dist/leaflet.css.min.js"
pin_all_from "app/javascript/controllers", under: "controllers"
