(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type attachments_source = {
  key : string prop;  (** key *)
  name : string prop option; [@option]  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** attachments_source *)

type parameter = {
  default_value : string prop;  (** default_value *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_ssm_document = {
  content : string prop;  (** content *)
  document_format : string prop option; [@option]
      (** document_format *)
  document_type : string prop;  (** document_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  permissions : (string * string prop) list option; [@option]
      (** permissions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_type : string prop option; [@option]  (** target_type *)
  version_name : string prop option; [@option]  (** version_name *)
  attachments_source : attachments_source list;
}
[@@deriving yojson_of]
(** aws_ssm_document *)

let attachments_source ?name ~key ~values () : attachments_source =
  { key; name; values }

let aws_ssm_document ?document_format ?id ?permissions ?tags
    ?tags_all ?target_type ?version_name ~content ~document_type
    ~name ~attachments_source () : aws_ssm_document =
  {
    content;
    document_format;
    document_type;
    id;
    name;
    permissions;
    tags;
    tags_all;
    target_type;
    version_name;
    attachments_source;
  }

type t = {
  arn : string prop;
  content : string prop;
  created_date : string prop;
  default_version : string prop;
  description : string prop;
  document_format : string prop;
  document_type : string prop;
  document_version : string prop;
  hash : string prop;
  hash_type : string prop;
  id : string prop;
  latest_version : string prop;
  name : string prop;
  owner : string prop;
  parameter : parameter list prop;
  permissions : (string * string) list prop;
  platform_types : string list prop;
  schema_version : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_type : string prop;
  version_name : string prop;
}

let register ?tf_module ?document_format ?id ?permissions ?tags
    ?tags_all ?target_type ?version_name ~content ~document_type
    ~name ~attachments_source __resource_id =
  let __resource_type = "aws_ssm_document" in
  let __resource =
    aws_ssm_document ?document_format ?id ?permissions ?tags
      ?tags_all ?target_type ?version_name ~content ~document_type
      ~name ~attachments_source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_document __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       content =
         Prop.computed __resource_type __resource_id "content";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       default_version =
         Prop.computed __resource_type __resource_id
           "default_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       document_format =
         Prop.computed __resource_type __resource_id
           "document_format";
       document_type =
         Prop.computed __resource_type __resource_id "document_type";
       document_version =
         Prop.computed __resource_type __resource_id
           "document_version";
       hash = Prop.computed __resource_type __resource_id "hash";
       hash_type =
         Prop.computed __resource_type __resource_id "hash_type";
       id = Prop.computed __resource_type __resource_id "id";
       latest_version =
         Prop.computed __resource_type __resource_id "latest_version";
       name = Prop.computed __resource_type __resource_id "name";
       owner = Prop.computed __resource_type __resource_id "owner";
       parameter =
         Prop.computed __resource_type __resource_id "parameter";
       permissions =
         Prop.computed __resource_type __resource_id "permissions";
       platform_types =
         Prop.computed __resource_type __resource_id "platform_types";
       schema_version =
         Prop.computed __resource_type __resource_id "schema_version";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_type =
         Prop.computed __resource_type __resource_id "target_type";
       version_name =
         Prop.computed __resource_type __resource_id "version_name";
     }
      : t)
  in
  __resource_attributes
