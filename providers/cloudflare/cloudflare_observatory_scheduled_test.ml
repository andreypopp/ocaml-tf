(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type cloudflare_observatory_scheduled_test = {
  frequency : string prop;
      (** The frequency to run the test. Available values: `DAILY`, `WEEKLY`. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  region : string prop;
      (** The region to run the test in. Available values: `us-central1`, `us-east1`, `us-east4`, `us-south1`, `us-west1`, `southamerica-east1`, `europe-north1`, `europe-southwest1`, `europe-west1`, `europe-west2`, `europe-west3`, `europe-west4`, `europe-west8`, `europe-west9`, `asia-east1`, `asia-south1`, `asia-southeast1`, `me-west1`, `australia-southeast1`. **Modifying this attribute will force creation of a new resource.** *)
  url : string prop;
      (** The page to run the test on. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Observatory Scheduled Test resource. *)

let timeouts ?create () : timeouts = { create }

let cloudflare_observatory_scheduled_test ?id ?timeouts ~frequency
    ~region ~url ~zone_id () : cloudflare_observatory_scheduled_test
    =
  { frequency; id; region; url; zone_id; timeouts }

type t = {
  frequency : string prop;
  id : string prop;
  region : string prop;
  url : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ?timeouts ~frequency ~region ~url
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_observatory_scheduled_test" in
  let __resource =
    cloudflare_observatory_scheduled_test ?id ?timeouts ~frequency
      ~region ~url ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_observatory_scheduled_test __resource);
  let __resource_attributes =
    ({
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       region = Prop.computed __resource_type __resource_id "region";
       url = Prop.computed __resource_type __resource_id "url";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
