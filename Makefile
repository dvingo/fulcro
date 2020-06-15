tests:
	yarn
	npx shadow-cljs -A:dev compile ci-tests
	npx karma start --single-run
	clojure -A:dev:test:clj-tests -J-Dguardrails.config=guardrails-test.edn -J-Dguardrails.enabled

dev:
	clojure -A:dev:test:clj-tests -J-Dguardrails.config=guardrails-test.edn -J-Dguardrails.enabled --watch --fail-fast --no-capture-output

ss: 
	yarn
	yarn shadow-cljs server

local:
	yarn
	yarn shadow-cljs watch todomvc workspaces
