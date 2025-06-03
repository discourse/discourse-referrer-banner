import Component from "@ember/component";
import { computed } from "@ember/object";
import dirSpan from "discourse/helpers/dir-span";

export default class ReferrerBanner extends Component {
  @computed
  get referrer() {
    let searchTerms = new RegExp(settings.match_urls, "gm");
    let referrer = document.referrer;
    return searchTerms.test(referrer);
  }

  <template>
    {{#if this.referrer}}
      <div class="wrap">
        <div class="alert alert-info">
          {{dirSpan settings.banner_content htmlSafe="true"}}
        </div>
      </div>
    {{/if}}
  </template>
}
