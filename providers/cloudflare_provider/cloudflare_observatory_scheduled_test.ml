(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_observatory_scheduled_test__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_observatory_scheduled_test__timeouts *)

type cloudflare_observatory_scheduled_test = {
  frequency : string;
      (** The frequency to run the test. Available values: `DAILY`, `WEEKLY`. **Modifying this attribute will force creation of a new resource.** *)
  region : string;
      (** The region to run the test in. Available values: `us-central1`, `us-east1`, `us-east4`, `us-south1`, `us-west1`, `southamerica-east1`, `europe-north1`, `europe-southwest1`, `europe-west1`, `europe-west2`, `europe-west3`, `europe-west4`, `europe-west8`, `europe-west9`, `asia-east1`, `asia-south1`, `asia-southeast1`, `me-west1`, `australia-southeast1`. **Modifying this attribute will force creation of a new resource.** *)
  url : string;
      (** The page to run the test on. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : cloudflare_observatory_scheduled_test__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Observatory Scheduled Test resource. *)

let cloudflare_observatory_scheduled_test ?timeouts ~frequency
    ~region ~url ~zone_id __resource_id =
  let __resource_type = "cloudflare_observatory_scheduled_test" in
  let __resource = { frequency; region; url; zone_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_observatory_scheduled_test __resource);
  ()
