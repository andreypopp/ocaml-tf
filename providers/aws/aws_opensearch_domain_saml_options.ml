(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type saml_options__idp = {
  entity_id : string prop;  (** entity_id *)
  metadata_content : string prop;  (** metadata_content *)
}
[@@deriving yojson_of]
(** saml_options__idp *)

type saml_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  master_backend_role : string prop option; [@option]
      (** master_backend_role *)
  master_user_name : string prop option; [@option]
      (** master_user_name *)
  roles_key : string prop option; [@option]  (** roles_key *)
  session_timeout_minutes : float prop option; [@option]
      (** session_timeout_minutes *)
  subject_key : string prop option; [@option]  (** subject_key *)
  idp : saml_options__idp list;
}
[@@deriving yojson_of]
(** saml_options *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearch_domain_saml_options = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  saml_options : saml_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_domain_saml_options *)

let saml_options__idp ~entity_id ~metadata_content () :
    saml_options__idp =
  { entity_id; metadata_content }

let saml_options ?enabled ?master_backend_role ?master_user_name
    ?roles_key ?session_timeout_minutes ?subject_key ~idp () :
    saml_options =
  {
    enabled;
    master_backend_role;
    master_user_name;
    roles_key;
    session_timeout_minutes;
    subject_key;
    idp;
  }

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_opensearch_domain_saml_options ?id ?timeouts ~domain_name
    ~saml_options () : aws_opensearch_domain_saml_options =
  { domain_name; id; saml_options; timeouts }

type t = { domain_name : string prop; id : string prop }

let make ?id ?timeouts ~domain_name ~saml_options __id =
  let __type = "aws_opensearch_domain_saml_options" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_domain_saml_options
        (aws_opensearch_domain_saml_options ?id ?timeouts
           ~domain_name ~saml_options ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_name ~saml_options __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_name ~saml_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
