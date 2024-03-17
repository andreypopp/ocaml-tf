(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_database__timeouts *)

type aws_finspace_kx_database = {
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_finspace_kx_database__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_database *)

let aws_finspace_kx_database ?description ?id ?tags ?tags_all
    ?timeouts ~environment_id ~name __resource_id =
  let __resource_type = "aws_finspace_kx_database" in
  let __resource =
    {
      description;
      environment_id;
      id;
      name;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_database __resource);
  ()
