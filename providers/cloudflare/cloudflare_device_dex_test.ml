(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~account_id ~description ~enabled ~interval ~name ~data
    __id =
  let __type = "cloudflare_device_dex_test" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       created = Prop.computed __type __id "created";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       name = Prop.computed __type __id "name";
       updated = Prop.computed __type __id "updated";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_dex_test
        (cloudflare_device_dex_test ?id ~account_id ~description
           ~enabled ~interval ~name ~data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~description ~enabled
    ~interval ~name ~data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~description ~enabled ~interval ~name ~data
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
