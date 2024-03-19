(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type container_provider__info__eks_info = {
  namespace : string prop option; [@option]  (** namespace *)
}
[@@deriving yojson_of]
(** container_provider__info__eks_info *)

type container_provider__info = {
  eks_info : container_provider__info__eks_info list;
}
[@@deriving yojson_of]
(** container_provider__info *)

type container_provider = {
  id : string prop;  (** id *)
  type_ : string prop; [@key "type"]  (** type *)
  info : container_provider__info list;
}
[@@deriving yojson_of]
(** container_provider *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_emrcontainers_virtual_cluster = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  container_provider : container_provider list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_emrcontainers_virtual_cluster *)

let container_provider__info__eks_info ?namespace () :
    container_provider__info__eks_info =
  { namespace }

let container_provider__info ~eks_info () : container_provider__info
    =
  { eks_info }

let container_provider ~id ~type_ ~info () : container_provider =
  { id; type_; info }

let timeouts ?delete () : timeouts = { delete }

let aws_emrcontainers_virtual_cluster ?id ?tags ?tags_all ?timeouts
    ~name ~container_provider () : aws_emrcontainers_virtual_cluster
    =
  { id; name; tags; tags_all; container_provider; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~name
    ~container_provider __resource_id =
  let __resource_type = "aws_emrcontainers_virtual_cluster" in
  let __resource =
    aws_emrcontainers_virtual_cluster ?id ?tags ?tags_all ?timeouts
      ~name ~container_provider ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
