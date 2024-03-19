(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type source__source_data = {
  acm_pca_arn : string prop option; [@option]  (** acm_pca_arn *)
  x509_certificate_data : string prop option; [@option]
      (** x509_certificate_data *)
}
[@@deriving yojson_of]
(** source__source_data *)

type source = {
  source_type : string prop;  (** source_type *)
  source_data : source__source_data list;
}
[@@deriving yojson_of]
(** source *)

type aws_rolesanywhere_trust_anchor = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  source : source list;
}
[@@deriving yojson_of]
(** aws_rolesanywhere_trust_anchor *)

let source__source_data ?acm_pca_arn ?x509_certificate_data () :
    source__source_data =
  { acm_pca_arn; x509_certificate_data }

let source ~source_type ~source_data () : source =
  { source_type; source_data }

let aws_rolesanywhere_trust_anchor ?enabled ?id ?tags ?tags_all ~name
    ~source () : aws_rolesanywhere_trust_anchor =
  { enabled; id; name; tags; tags_all; source }

type t = {
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?enabled ?id ?tags ?tags_all ~name ~source
    __resource_id =
  let __resource_type = "aws_rolesanywhere_trust_anchor" in
  let __resource =
    aws_rolesanywhere_trust_anchor ?enabled ?id ?tags ?tags_all ~name
      ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rolesanywhere_trust_anchor __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
