(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed__authorization_attempt_info = {
  details : string prop;
  domain : string prop;
  failure_reason : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed__authorization_attempt_info) -> ()

let yojson_of_managed__authorization_attempt_info =
  (function
   | {
       details = v_details;
       domain = v_domain;
       failure_reason = v_failure_reason;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_failure_reason
         in
         ("failure_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_details in
         ("details", arg) :: bnds
       in
       `Assoc bnds
    : managed__authorization_attempt_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed__authorization_attempt_info

[@@@deriving.end]

type managed__provisioning_issue = {
  details : string prop;
  reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed__provisioning_issue) -> ()

let yojson_of_managed__provisioning_issue =
  (function
   | { details = v_details; reason = v_reason } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_details in
         ("details", arg) :: bnds
       in
       `Assoc bnds
    : managed__provisioning_issue ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed__provisioning_issue

[@@@deriving.end]

type managed = {
  dns_authorizations : string prop list option; [@option]
  domains : string prop list option; [@option]
  issuance_config : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed) -> ()

let yojson_of_managed =
  (function
   | {
       dns_authorizations = v_dns_authorizations;
       domains = v_domains;
       issuance_config = v_issuance_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_issuance_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuance_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_authorizations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_authorizations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed

[@@@deriving.end]

type self_managed = {
  certificate_pem : string prop option; [@option]
  pem_certificate : string prop option; [@option]
  pem_private_key : string prop option; [@option]
  private_key_pem : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : self_managed) -> ()

let yojson_of_self_managed =
  (function
   | {
       certificate_pem = v_certificate_pem;
       pem_certificate = v_pem_certificate;
       pem_private_key = v_pem_private_key;
       private_key_pem = v_private_key_pem;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_private_key_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key_pem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pem_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pem_private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pem_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pem_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_pem", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : self_managed -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_self_managed

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_certificate_manager_certificate = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  scope : string prop option; [@option]
  managed : managed list;
  self_managed : self_managed list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_certificate_manager_certificate) -> ()

let yojson_of_google_certificate_manager_certificate =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       scope = v_scope;
       managed = v_managed;
       self_managed = v_self_managed;
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
         let arg =
           yojson_of_list yojson_of_self_managed v_self_managed
         in
         ("self_managed", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_managed v_managed in
         ("managed", arg) :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_certificate_manager_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_certificate_manager_certificate

[@@@deriving.end]

let managed ?dns_authorizations ?domains ?issuance_config () :
    managed =
  { dns_authorizations; domains; issuance_config }

let self_managed ?certificate_pem ?pem_certificate ?pem_private_key
    ?private_key_pem () : self_managed =
  {
    certificate_pem;
    pem_certificate;
    pem_private_key;
    private_key_pem;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_certificate_manager_certificate ?description ?id ?labels
    ?location ?project ?scope ?(managed = []) ?(self_managed = [])
    ?timeouts ~name () : google_certificate_manager_certificate =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    scope;
    managed;
    self_managed;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?location ?project ?scope
    ?(managed = []) ?(self_managed = []) ?timeouts ~name __id =
  let __type = "google_certificate_manager_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       scope = Prop.computed __type __id "scope";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_certificate_manager_certificate
        (google_certificate_manager_certificate ?description ?id
           ?labels ?location ?project ?scope ~managed ~self_managed
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?location ?project
    ?scope ?(managed = []) ?(self_managed = []) ?timeouts ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?location ?project ?scope ~managed
      ~self_managed ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
