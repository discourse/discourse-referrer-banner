/* eslint-disable ember/no-classic-components, ember/require-tagless-components */
import Component from "@ember/component";
import { classNames } from "@ember-decorators/component";
import ReferrerBanner from "../../components/referrer-banner";

@classNames("below-site-header-outlet", "referrer-banner")
export default class ReferrerBannerConnector extends Component {
  <template><ReferrerBanner /></template>
}
