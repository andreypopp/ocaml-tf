(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_contact_flow = {
  content : string option; [@option]  (** content *)
  content_hash : string option; [@option]  (** content_hash *)
  description : string option; [@option]  (** description *)
  filename : string option; [@option]  (** filename *)
  id : string option; [@option]  (** id *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_connect_contact_flow *)

let aws_connect_contact_flow ?content ?content_hash ?description
    ?filename ?id ?tags ?tags_all ?type_ ~instance_id ~name
    __resource_id =
  let __resource_type = "aws_connect_contact_flow" in
  let __resource =
    {
      content;
      content_hash;
      description;
      filename;
      id;
      instance_id;
      name;
      tags;
      tags_all;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_contact_flow __resource);
  ()
