(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type saml_options = {
  group_attribute : string prop option; [@option]
      (** group_attribute *)
  metadata : string prop;  (** metadata *)
  session_timeout : float prop option; [@option]
      (** session_timeout *)
  user_attribute : string prop option; [@option]
      (** user_attribute *)
}
[@@deriving yojson_of]
(** saml_options *)

type aws_opensearchserverless_security_config = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  saml_options : saml_options;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_security_config *)

let saml_options ?group_attribute ?session_timeout ?user_attribute
    ~metadata () : saml_options =
  { group_attribute; metadata; session_timeout; user_attribute }

let aws_opensearchserverless_security_config ?description ~name
    ~type_ ~saml_options () :
    aws_opensearchserverless_security_config =
  { description; name; type_; saml_options }

type t = {
  config_version : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?description ~name ~type_ ~saml_options __id =
  let __type = "aws_opensearchserverless_security_config" in
  let __attrs =
    ({
       config_version = Prop.computed __type __id "config_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_security_config
        (aws_opensearchserverless_security_config ?description ~name
           ~type_ ~saml_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~name ~type_ ~saml_options __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ~name ~type_ ~saml_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
