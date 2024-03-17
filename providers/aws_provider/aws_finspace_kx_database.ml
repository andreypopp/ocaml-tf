(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_database__timeouts *)

type aws_finspace_kx_database = {
  description : string option; [@option]  (** description *)
  environment_id : string;  (** environment_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_finspace_kx_database__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_database *)

let aws_finspace_kx_database ?description ?tags ?timeouts
    ~environment_id ~name __resource_id =
  let __resource_type = "aws_finspace_kx_database" in
  let __resource =
    { description; environment_id; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_database __resource);
  ()
