(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validator = {
  content : string prop option; [@option]  (** content *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** validator *)

type aws_appconfig_configuration_profile = {
  application_id : string prop;  (** application_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_identifier : string prop option; [@option]
      (** kms_key_identifier *)
  location_uri : string prop;  (** location_uri *)
  name : string prop;  (** name *)
  retrieval_role_arn : string prop option; [@option]
      (** retrieval_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  validator : validator list;
}
[@@deriving yojson_of]
(** aws_appconfig_configuration_profile *)

let validator ?content ~type_ () : validator = { content; type_ }

let aws_appconfig_configuration_profile ?description ?id
    ?kms_key_identifier ?retrieval_role_arn ?tags ?tags_all ?type_
    ~application_id ~location_uri ~name ~validator () :
    aws_appconfig_configuration_profile =
  {
    application_id;
    description;
    id;
    kms_key_identifier;
    location_uri;
    name;
    retrieval_role_arn;
    tags;
    tags_all;
    type_;
    validator;
  }

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  description : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  location_uri : string prop;
  name : string prop;
  retrieval_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?kms_key_identifier ?retrieval_role_arn
    ?tags ?tags_all ?type_ ~application_id ~location_uri ~name
    ~validator __id =
  let __type = "aws_appconfig_configuration_profile" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       configuration_profile_id =
         Prop.computed __type __id "configuration_profile_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_identifier =
         Prop.computed __type __id "kms_key_identifier";
       location_uri = Prop.computed __type __id "location_uri";
       name = Prop.computed __type __id "name";
       retrieval_role_arn =
         Prop.computed __type __id "retrieval_role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_configuration_profile
        (aws_appconfig_configuration_profile ?description ?id
           ?kms_key_identifier ?retrieval_role_arn ?tags ?tags_all
           ?type_ ~application_id ~location_uri ~name ~validator ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_identifier
    ?retrieval_role_arn ?tags ?tags_all ?type_ ~application_id
    ~location_uri ~name ~validator __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_identifier ?retrieval_role_arn
      ?tags ?tags_all ?type_ ~application_id ~location_uri ~name
      ~validator __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
