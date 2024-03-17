(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_vocabulary__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_connect_vocabulary__timeouts *)

type aws_connect_vocabulary = {
  content : string;  (** content *)
  id : string option; [@option]  (** id *)
  instance_id : string;  (** instance_id *)
  language_code : string;  (** language_code *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_connect_vocabulary__timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_vocabulary *)

let aws_connect_vocabulary ?id ?tags ?tags_all ?timeouts ~content
    ~instance_id ~language_code ~name __resource_id =
  let __resource_type = "aws_connect_vocabulary" in
  let __resource =
    {
      content;
      id;
      instance_id;
      language_code;
      name;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_vocabulary __resource);
  ()
