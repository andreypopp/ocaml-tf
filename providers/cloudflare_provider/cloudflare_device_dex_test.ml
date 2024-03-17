(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_device_dex_test__data = {
  host : string;
      (** The host URL for `http` test `kind`. For `traceroute`, it must be a valid hostname or IP address. *)
  kind : string;
      (** The type of Device Dex Test. Available values: `http`, `traceroute`. *)
  method_ : string option; [@option] [@key "method"]
      (** The http request method. Available values: `GET`. *)
}
[@@deriving yojson_of]
(** The configuration object which contains the details for the WARP client to conduct the test. *)

type cloudflare_device_dex_test = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  description : string;  (** Additional details about the test. *)
  enabled : bool;
      (** Determines whether or not the test is active. *)
  interval : string;  (** How often the test will run. *)
  name : string;
      (** The name of the Device Dex Test. Must be unique. *)
  data : cloudflare_device_dex_test__data list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Dex Test resource. Device Dex Tests allow for building location-aware device settings policies. *)

let cloudflare_device_dex_test ~account_id ~description ~enabled
    ~interval ~name ~data __resource_id =
  let __resource_type = "cloudflare_device_dex_test" in
  let __resource =
    { account_id; description; enabled; interval; name; data }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_dex_test __resource);
  ()
