(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_organization = {
  domain : string prop option; [@option]
  id : string prop option; [@option]
  organization : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_organization) -> ()

let yojson_of_google_organization =
  (function
   | { domain = v_domain; id = v_id; organization = v_organization }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
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
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_organization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_organization

[@@@deriving.end]

let google_organization ?domain ?id ?organization () :
    google_organization =
  { domain; id; organization }

type t = {
  create_time : string prop;
  directory_customer_id : string prop;
  domain : string prop;
  id : string prop;
  lifecycle_state : string prop;
  name : string prop;
  org_id : string prop;
  organization : string prop;
}

let make ?domain ?id ?organization __id =
  let __type = "google_organization" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       directory_customer_id =
         Prop.computed __type __id "directory_customer_id";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       organization = Prop.computed __type __id "organization";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_organization
        (google_organization ?domain ?id ?organization ());
    attrs = __attrs;
  }

let register ?tf_module ?domain ?id ?organization __id =
  let (r : _ Tf_core.resource) =
    make ?domain ?id ?organization __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
