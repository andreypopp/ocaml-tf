(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_outposts = {
  availability_zone : string prop option; [@option]
  availability_zone_id : string prop option; [@option]
  id : string prop option; [@option]
  owner_id : string prop option; [@option]
  site_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_outposts) -> ()

let yojson_of_aws_outposts_outposts =
  (function
   | {
       availability_zone = v_availability_zone;
       availability_zone_id = v_availability_zone_id;
       id = v_id;
       owner_id = v_owner_id;
       site_id = v_site_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_site_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "site_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
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
         match v_availability_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_outposts_outposts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_outposts

[@@@deriving.end]

let aws_outposts_outposts ?availability_zone ?availability_zone_id
    ?id ?owner_id ?site_id () : aws_outposts_outposts =
  { availability_zone; availability_zone_id; id; owner_id; site_id }

type t = {
  arns : string list prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  id : string prop;
  ids : string list prop;
  owner_id : string prop;
  site_id : string prop;
}

let make ?availability_zone ?availability_zone_id ?id ?owner_id
    ?site_id __id =
  let __type = "aws_outposts_outposts" in
  let __attrs =
    ({
       arns = Prop.computed __type __id "arns";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       owner_id = Prop.computed __type __id "owner_id";
       site_id = Prop.computed __type __id "site_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_outposts_outposts
        (aws_outposts_outposts ?availability_zone
           ?availability_zone_id ?id ?owner_id ?site_id ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?availability_zone_id ?id
    ?owner_id ?site_id __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?availability_zone_id ?id ?owner_id
      ?site_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
