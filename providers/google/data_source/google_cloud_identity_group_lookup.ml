(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type group_key = {
  id : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : group_key) -> ()

let yojson_of_group_key =
  (function
   | { id = v_id; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : group_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group_key

[@@@deriving.end]

type google_cloud_identity_group_lookup = {
  id : string prop option; [@option]
  group_key : group_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_identity_group_lookup) -> ()

let yojson_of_google_cloud_identity_group_lookup =
  (function
   | { id = v_id; group_key = v_group_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_group_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_group_key) v_group_key
           in
           let bnd = "group_key", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_identity_group_lookup ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_identity_group_lookup

[@@@deriving.end]

let group_key ?namespace ~id () : group_key = { id; namespace }

let google_cloud_identity_group_lookup ?id ~group_key () :
    google_cloud_identity_group_lookup =
  { id; group_key }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ~group_key __id =
  let __type = "google_cloud_identity_group_lookup" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_identity_group_lookup
        (google_cloud_identity_group_lookup ?id ~group_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_key __id =
  let (r : _ Tf_core.resource) = make ?id ~group_key __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
