(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_signing_keys__digests = {
  digest : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_signing_keys__digests) -> ()

let yojson_of_key_signing_keys__digests =
  (function
   | { digest = v_digest; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_digest in
         ("digest", arg) :: bnds
       in
       `Assoc bnds
    : key_signing_keys__digests -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_signing_keys__digests

[@@@deriving.end]

type key_signing_keys = {
  algorithm : string prop;
  creation_time : string prop;
  description : string prop;
  digests : key_signing_keys__digests list;
  ds_record : string prop;
  id : string prop;
  is_active : bool prop;
  key_length : float prop;
  key_tag : float prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_signing_keys) -> ()

let yojson_of_key_signing_keys =
  (function
   | {
       algorithm = v_algorithm;
       creation_time = v_creation_time;
       description = v_description;
       digests = v_digests;
       ds_record = v_ds_record;
       id = v_id;
       is_active = v_is_active;
       key_length = v_key_length;
       key_tag = v_key_tag;
       public_key = v_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_key_tag in
         ("key_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_key_length in
         ("key_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_active in
         ("is_active", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ds_record in
         ("ds_record", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_key_signing_keys__digests
             v_digests
         in
         ("digests", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_time in
         ("creation_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : key_signing_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_signing_keys

[@@@deriving.end]

type zone_signing_keys__digests = {
  digest : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : zone_signing_keys__digests) -> ()

let yojson_of_zone_signing_keys__digests =
  (function
   | { digest = v_digest; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_digest in
         ("digest", arg) :: bnds
       in
       `Assoc bnds
    : zone_signing_keys__digests -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_zone_signing_keys__digests

[@@@deriving.end]

type zone_signing_keys = {
  algorithm : string prop;
  creation_time : string prop;
  description : string prop;
  digests : zone_signing_keys__digests list;
  id : string prop;
  is_active : bool prop;
  key_length : float prop;
  key_tag : float prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : zone_signing_keys) -> ()

let yojson_of_zone_signing_keys =
  (function
   | {
       algorithm = v_algorithm;
       creation_time = v_creation_time;
       description = v_description;
       digests = v_digests;
       id = v_id;
       is_active = v_is_active;
       key_length = v_key_length;
       key_tag = v_key_tag;
       public_key = v_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_key_tag in
         ("key_tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_key_length in
         ("key_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_active in
         ("is_active", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_zone_signing_keys__digests
             v_digests
         in
         ("digests", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_time in
         ("creation_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : zone_signing_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_zone_signing_keys

[@@@deriving.end]

type google_dns_keys = {
  managed_zone : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_keys) -> ()

let yojson_of_google_dns_keys =
  (function
   | { managed_zone = v_managed_zone; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_managed_zone in
         ("managed_zone", arg) :: bnds
       in
       `Assoc bnds
    : google_dns_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_keys

[@@@deriving.end]

let google_dns_keys ?project ~managed_zone () : google_dns_keys =
  { managed_zone; project }

type t = {
  id : string prop;
  key_signing_keys : key_signing_keys list prop;
  managed_zone : string prop;
  project : string prop;
  zone_signing_keys : zone_signing_keys list prop;
}

let make ?project ~managed_zone __id =
  let __type = "google_dns_keys" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_signing_keys =
         Prop.computed __type __id "key_signing_keys";
       managed_zone = Prop.computed __type __id "managed_zone";
       project = Prop.computed __type __id "project";
       zone_signing_keys =
         Prop.computed __type __id "zone_signing_keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_keys
        (google_dns_keys ?project ~managed_zone ());
    attrs = __attrs;
  }

let register ?tf_module ?project ~managed_zone __id =
  let (r : _ Tf_core.resource) = make ?project ~managed_zone __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
