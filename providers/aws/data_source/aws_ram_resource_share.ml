(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_ram_resource_share = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  resource_owner : string prop;
  resource_share_status : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ram_resource_share) -> ()

let yojson_of_aws_ram_resource_share =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_owner = v_resource_owner;
       resource_share_status = v_resource_share_status;
       tags = v_tags;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_share_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_share_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_owner
         in
         ("resource_owner", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : aws_ram_resource_share -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ram_resource_share

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_ram_resource_share ?id ?name ?resource_share_status ?tags
    ~resource_owner ~filter () : aws_ram_resource_share =
  { id; name; resource_owner; resource_share_status; tags; filter }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  owning_account_id : string prop;
  resource_arns : string list prop;
  resource_owner : string prop;
  resource_share_status : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?name ?resource_share_status ?tags ~resource_owner
    ~filter __id =
  let __type = "aws_ram_resource_share" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owning_account_id =
         Prop.computed __type __id "owning_account_id";
       resource_arns = Prop.computed __type __id "resource_arns";
       resource_owner = Prop.computed __type __id "resource_owner";
       resource_share_status =
         Prop.computed __type __id "resource_share_status";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_resource_share
        (aws_ram_resource_share ?id ?name ?resource_share_status
           ?tags ~resource_owner ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?resource_share_status ?tags
    ~resource_owner ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?resource_share_status ?tags ~resource_owner
      ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
