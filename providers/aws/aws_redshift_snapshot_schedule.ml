(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_schedule = {
  definitions : string prop list;  (** definitions *)
  description : string prop option; [@option]  (** description *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  identifier_prefix : string prop option; [@option]
      (** identifier_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule *)

let aws_redshift_snapshot_schedule ?description ?force_destroy ?id
    ?identifier ?identifier_prefix ?tags ?tags_all ~definitions () :
    aws_redshift_snapshot_schedule =
  {
    definitions;
    description;
    force_destroy;
    id;
    identifier;
    identifier_prefix;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  definitions : string list prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?force_destroy ?id ?identifier
    ?identifier_prefix ?tags ?tags_all ~definitions __resource_id =
  let __resource_type = "aws_redshift_snapshot_schedule" in
  let __resource =
    aws_redshift_snapshot_schedule ?description ?force_destroy ?id
      ?identifier ?identifier_prefix ?tags ?tags_all ~definitions ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_schedule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       definitions =
         Prop.computed __resource_type __resource_id "definitions";
       description =
         Prop.computed __resource_type __resource_id "description";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       identifier =
         Prop.computed __resource_type __resource_id "identifier";
       identifier_prefix =
         Prop.computed __resource_type __resource_id
           "identifier_prefix";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
