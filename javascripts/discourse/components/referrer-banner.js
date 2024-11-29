import Component from "@ember/component";
import { computed } from "@ember/object";

export default class ReferrerBanner extends Component {
  @computed
  get referrer() {
    let searchTerms = new RegExp(settings.match_urls, "gm");
    let referrer = document.referrer;
    return searchTerms.test(referrer);
  }
}
