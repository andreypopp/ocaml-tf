(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_policy = {
  content : string;  (** content *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_organizations_policy *)

let aws_organizations_policy ?description ?id ?skip_destroy ?tags
    ?tags_all ?type_ ~content ~name __resource_id =
  let __resource_type = "aws_organizations_policy" in
  let __resource =
    {
      content;
      description;
      id;
      name;
      skip_destroy;
      tags;
      tags_all;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_policy __resource);
  ()
