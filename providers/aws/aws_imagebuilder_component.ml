(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_component = {
  change_description : string prop option; [@option]
      (** change_description *)
  data : string prop option; [@option]  (** data *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  platform : string prop;  (** platform *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  supported_os_versions : string prop list option; [@option]
      (** supported_os_versions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  uri : string prop option; [@option]  (** uri *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_component *)

type t = {
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  platform : string prop;
  skip_destroy : bool prop;
  supported_os_versions : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  uri : string prop;
  version : string prop;
}

let aws_imagebuilder_component ?change_description ?data ?description
    ?id ?kms_key_id ?skip_destroy ?supported_os_versions ?tags
    ?tags_all ?uri ~name ~platform ~version __resource_id =
  let __resource_type = "aws_imagebuilder_component" in
  let __resource =
    ({
       change_description;
       data;
       description;
       id;
       kms_key_id;
       name;
       platform;
       skip_destroy;
       supported_os_versions;
       tags;
       tags_all;
       uri;
       version;
     }
      : aws_imagebuilder_component)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_component __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       change_description =
         Prop.computed __resource_type __resource_id
           "change_description";
       data = Prop.computed __resource_type __resource_id "data";
       date_created =
         Prop.computed __resource_type __resource_id "date_created";
       description =
         Prop.computed __resource_type __resource_id "description";
       encrypted =
         Prop.computed __resource_type __resource_id "encrypted";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       owner = Prop.computed __resource_type __resource_id "owner";
       platform =
         Prop.computed __resource_type __resource_id "platform";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       supported_os_versions =
         Prop.computed __resource_type __resource_id
           "supported_os_versions";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       uri = Prop.computed __resource_type __resource_id "uri";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
