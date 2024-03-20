(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lakeformation_resource = {
  arn : string prop;
  hybrid_access_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  role_arn : string prop option; [@option]
  use_service_linked_role : bool prop option; [@option]
  with_federation : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lakeformation_resource) -> ()

let yojson_of_aws_lakeformation_resource =
  (function
   | {
       arn = v_arn;
       hybrid_access_enabled = v_hybrid_access_enabled;
       id = v_id;
       role_arn = v_role_arn;
       use_service_linked_role = v_use_service_linked_role;
       with_federation = v_with_federation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_federation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_federation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_service_linked_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_service_linked_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hybrid_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hybrid_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_lakeformation_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lakeformation_resource

[@@@deriving.end]

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
