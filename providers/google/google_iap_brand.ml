(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_iap_brand = {
  application_title : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  support_email : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iap_brand) -> ()

let yojson_of_google_iap_brand =
  (function
   | {
       application_title = v_application_title;
       id = v_id;
       project = v_project;
       support_email = v_support_email;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_support_email in
         ("support_email", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_title
         in
         ("application_title", arg) :: bnds
       in
       `Assoc bnds
    : google_iap_brand -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_brand

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_iap_brand ?id ?project ?timeouts ~application_title
    ~support_email () : google_iap_brand =
  { application_title; id; project; support_email; timeouts }

type t = {
  tf_name : string;
  application_title : string prop;
  id : string prop;
  name : string prop;
  org_internal_only : bool prop;
  project : string prop;
  support_email : string prop;
}

let make ?id ?project ?timeouts ~application_title ~support_email
    __id =
  let __type = "google_iap_brand" in
  let __attrs =
    ({
       tf_name = __id;
       application_title =
         Prop.computed __type __id "application_title";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       org_internal_only =
         Prop.computed __type __id "org_internal_only";
       project = Prop.computed __type __id "project";
       support_email = Prop.computed __type __id "support_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_brand
        (google_iap_brand ?id ?project ?timeouts ~application_title
           ~support_email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~application_title
    ~support_email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~application_title ~support_email
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
