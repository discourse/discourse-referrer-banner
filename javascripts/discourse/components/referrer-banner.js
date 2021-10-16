import Component from "@ember/component";
import { computed } from "@ember/object";

export default Component.extend({
  referrer: computed(function () {
    let searchTerms = new RegExp(settings.match_urls, "gm");
    let referrer = document.referrer;
    return searchTerms.test(referrer);
  }),
});
