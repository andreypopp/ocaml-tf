(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_internet_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_internet_gateway__timeouts *)

type aws_internet_gateway = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
  timeouts : aws_internet_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_internet_gateway *)

let aws_internet_gateway ?id ?tags ?tags_all ?vpc_id ?timeouts
    __resource_id =
  let __resource_type = "aws_internet_gateway" in
  let __resource = { id; tags; tags_all; vpc_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_internet_gateway __resource);
  ()
