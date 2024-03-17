(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emrcontainers_virtual_cluster__container_provider__info__eks_info = {
  namespace : string option; [@option]  (** namespace *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster__container_provider__info__eks_info *)

type aws_emrcontainers_virtual_cluster__container_provider__info = {
  eks_info :
    aws_emrcontainers_virtual_cluster__container_provider__info__eks_info
    list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster__container_provider__info *)

type aws_emrcontainers_virtual_cluster__container_provider = {
  id : string;  (** id *)
  type_ : string; [@key "type"]  (** type *)
  info :
    aws_emrcontainers_virtual_cluster__container_provider__info list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster__container_provider *)

type aws_emrcontainers_virtual_cluster__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster__timeouts *)

type aws_emrcontainers_virtual_cluster = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  container_provider :
    aws_emrcontainers_virtual_cluster__container_provider list;
  timeouts : aws_emrcontainers_virtual_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster *)

let aws_emrcontainers_virtual_cluster ?tags ?timeouts ~name
    ~container_provider __resource_id =
  let __resource_type = "aws_emrcontainers_virtual_cluster" in
  let __resource = { name; tags; container_provider; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emrcontainers_virtual_cluster __resource);
  ()
