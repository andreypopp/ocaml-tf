(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption_configuration = {
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  kms_key : string prop option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** encryption_configuration *)

type image_scanning_configuration = {
  scan_on_push : bool prop;  (** scan_on_push *)
}
[@@deriving yojson_of]
(** image_scanning_configuration *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ecr_repository = {
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  image_tag_mutability : string prop option; [@option]
      (** image_tag_mutability *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  encryption_configuration : encryption_configuration list;
  image_scanning_configuration : image_scanning_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ecr_repository *)

let encryption_configuration ?encryption_type ?kms_key () :
    encryption_configuration =
  { encryption_type; kms_key }

let image_scanning_configuration ~scan_on_push () :
    image_scanning_configuration =
  { scan_on_push }

let timeouts ?delete () : timeouts = { delete }

let aws_ecr_repository ?force_delete ?id ?image_tag_mutability ?tags
    ?tags_all ?timeouts ~name ~encryption_configuration
    ~image_scanning_configuration () : aws_ecr_repository =
  {
    force_delete;
    id;
    image_tag_mutability;
    name;
    tags;
    tags_all;
    encryption_configuration;
    image_scanning_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  force_delete : bool prop;
  id : string prop;
  image_tag_mutability : string prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?force_delete ?id ?image_tag_mutability ?tags
    ?tags_all ?timeouts ~name ~encryption_configuration
    ~image_scanning_configuration __resource_id =
  let __resource_type = "aws_ecr_repository" in
  let __resource =
    aws_ecr_repository ?force_delete ?id ?image_tag_mutability ?tags
      ?tags_all ?timeouts ~name ~encryption_configuration
      ~image_scanning_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_repository __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       force_delete =
         Prop.computed __resource_type __resource_id "force_delete";
       id = Prop.computed __resource_type __resource_id "id";
       image_tag_mutability =
         Prop.computed __resource_type __resource_id
           "image_tag_mutability";
       name = Prop.computed __resource_type __resource_id "name";
       registry_id =
         Prop.computed __resource_type __resource_id "registry_id";
       repository_url =
         Prop.computed __resource_type __resource_id "repository_url";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
