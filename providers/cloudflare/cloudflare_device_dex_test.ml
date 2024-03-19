(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data = {
  host : string prop;
      (** The host URL for `http` test `kind`. For `traceroute`, it must be a valid hostname or IP address. *)
  kind : string prop;
      (** The type of Device Dex Test. Available values: `http`, `traceroute`. *)
  method_ : string prop option; [@option] [@key "method"]
      (** The http request method. Available values: `GET`. *)
}
[@@deriving yojson_of]
(** The configuration object which contains the details for the WARP client to conduct the test. *)

type cloudflare_device_dex_test = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  description : string prop;
      (** Additional details about the test. *)
  enabled : bool prop;
      (** Determines whether or not the test is active. *)
  id : string prop option; [@option]  (** id *)
  interval : string prop;  (** How often the test will run. *)
  name : string prop;
      (** The name of the Device Dex Test. Must be unique. *)
  data : data list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Dex Test resource. Device Dex Tests allow for building location-aware device settings policies. *)

let data ?method_ ~host ~kind () : data = { host; kind; method_ }

let cloudflare_device_dex_test ?id ~account_id ~description ~enabled
    ~interval ~name ~data () : cloudflare_device_dex_test =
  { account_id; description; enabled; id; interval; name; data }

type t = {
  account_id : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  interval : string prop;
  name : string prop;
  updated : string prop;
}

let register ?tf_module ?id ~account_id ~description ~enabled
    ~interval ~name ~data __resource_id =
  let __resource_type = "cloudflare_device_dex_test" in
  let __resource =
    cloudflare_device_dex_test ?id ~account_id ~description ~enabled
      ~interval ~name ~data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_dex_test __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       created =
         Prop.computed __resource_type __resource_id "created";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       name = Prop.computed __resource_type __resource_id "name";
       updated =
         Prop.computed __resource_type __resource_id "updated";
     }
      : t)
  in
  __resource_attributes
