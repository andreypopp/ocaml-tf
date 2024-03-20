(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lakeformation_resource = {
  arn : string prop;  (** arn *)
  hybrid_access_enabled : bool prop option; [@option]
      (** hybrid_access_enabled *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  use_service_linked_role : bool prop option; [@option]
      (** use_service_linked_role *)
  with_federation : bool prop option; [@option]
      (** with_federation *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource *)

let aws_lakeformation_resource ?hybrid_access_enabled ?id ?role_arn
    ?use_service_linked_role ?with_federation ~arn () :
    aws_lakeformation_resource =
  {
    arn;
    hybrid_access_enabled;
    id;
    role_arn;
    use_service_linked_role;
    with_federation;
  }

type t = {
  arn : string prop;
  hybrid_access_enabled : bool prop;
  id : string prop;
  last_modified : string prop;
  role_arn : string prop;
  use_service_linked_role : bool prop;
  with_federation : bool prop;
}

let make ?hybrid_access_enabled ?id ?role_arn
    ?use_service_linked_role ?with_federation ~arn __id =
  let __type = "aws_lakeformation_resource" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       hybrid_access_enabled =
         Prop.computed __type __id "hybrid_access_enabled";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       role_arn = Prop.computed __type __id "role_arn";
       use_service_linked_role =
         Prop.computed __type __id "use_service_linked_role";
       with_federation = Prop.computed __type __id "with_federation";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lakeformation_resource
        (aws_lakeformation_resource ?hybrid_access_enabled ?id
           ?role_arn ?use_service_linked_role ?with_federation ~arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?hybrid_access_enabled ?id ?role_arn
    ?use_service_linked_role ?with_federation ~arn __id =
  let (r : _ Tf_core.resource) =
    make ?hybrid_access_enabled ?id ?role_arn
      ?use_service_linked_role ?with_federation ~arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
