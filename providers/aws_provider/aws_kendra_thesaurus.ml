(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kendra_thesaurus__source_s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** aws_kendra_thesaurus__source_s3_path *)

type aws_kendra_thesaurus__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_thesaurus__timeouts *)

type aws_kendra_thesaurus = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  source_s3_path : aws_kendra_thesaurus__source_s3_path list;
  timeouts : aws_kendra_thesaurus__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_thesaurus *)

let aws_kendra_thesaurus ?description ?id ?tags ?tags_all ?timeouts
    ~index_id ~name ~role_arn ~source_s3_path __resource_id =
  let __resource_type = "aws_kendra_thesaurus" in
  let __resource =
    {
      description;
      id;
      index_id;
      name;
      role_arn;
      tags;
      tags_all;
      source_s3_path;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_thesaurus __resource);
  ()
