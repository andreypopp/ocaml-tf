(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_contact_flow_module = {
  content : string prop option; [@option]  (** content *)
  content_hash : string prop option; [@option]  (** content_hash *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_contact_flow_module *)

let aws_connect_contact_flow_module ?content ?content_hash
    ?description ?filename ?id ?tags ?tags_all ~instance_id ~name
    __resource_id =
  let __resource_type = "aws_connect_contact_flow_module" in
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
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_contact_flow_module __resource);
  ()
