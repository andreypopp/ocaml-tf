(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emrcontainers_virtual_cluster__container_provider__info__eks_info = {
  namespace : string prop option; [@option]  (** namespace *)
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
  id : string prop;  (** id *)
  type_ : string prop; [@key "type"]  (** type *)
  info :
    aws_emrcontainers_virtual_cluster__container_provider__info list;
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster__container_provider *)

type aws_emrcontainers_virtual_cluster__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster__timeouts *)

type aws_emrcontainers_virtual_cluster = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  container_provider :
    aws_emrcontainers_virtual_cluster__container_provider list;
  timeouts : aws_emrcontainers_virtual_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_emrcontainers_virtual_cluster ?id ?tags ?tags_all ?timeouts
    ~name ~container_provider __resource_id =
  let __resource_type = "aws_emrcontainers_virtual_cluster" in
  let __resource =
    ({ id; name; tags; tags_all; container_provider; timeouts }
      : aws_emrcontainers_virtual_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emrcontainers_virtual_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
