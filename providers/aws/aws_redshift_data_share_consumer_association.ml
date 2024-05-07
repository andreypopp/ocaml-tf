(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_data_share_consumer_association = {
  allow_writes : bool prop option; [@option]
  associate_entire_account : bool prop option; [@option]
  consumer_arn : string prop option; [@option]
  consumer_region : string prop option; [@option]
  data_share_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_data_share_consumer_association) -> ()

let yojson_of_aws_redshift_data_share_consumer_association =
  (function
   | {
       allow_writes = v_allow_writes;
       associate_entire_account = v_associate_entire_account;
       consumer_arn = v_consumer_arn;
       consumer_region = v_consumer_region;
       data_share_arn = v_data_share_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_share_arn
         in
         ("data_share_arn", arg) :: bnds
       in
       let bnds =
         match v_consumer_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associate_entire_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "associate_entire_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_writes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_writes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_data_share_consumer_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_data_share_consumer_association

[@@@deriving.end]

let aws_redshift_data_share_consumer_association ?allow_writes
    ?associate_entire_account ?consumer_arn ?consumer_region
    ~data_share_arn () : aws_redshift_data_share_consumer_association
    =
  {
    allow_writes;
    associate_entire_account;
    consumer_arn;
    consumer_region;
    data_share_arn;
  }

type t = {
  tf_name : string;
  allow_writes : bool prop;
  associate_entire_account : bool prop;
  consumer_arn : string prop;
  consumer_region : string prop;
  data_share_arn : string prop;
  id : string prop;
  managed_by : string prop;
  producer_arn : string prop;
}

let make ?allow_writes ?associate_entire_account ?consumer_arn
    ?consumer_region ~data_share_arn __id =
  let __type = "aws_redshift_data_share_consumer_association" in
  let __attrs =
    ({
       tf_name = __id;
       allow_writes = Prop.computed __type __id "allow_writes";
       associate_entire_account =
         Prop.computed __type __id "associate_entire_account";
       consumer_arn = Prop.computed __type __id "consumer_arn";
       consumer_region = Prop.computed __type __id "consumer_region";
       data_share_arn = Prop.computed __type __id "data_share_arn";
       id = Prop.computed __type __id "id";
       managed_by = Prop.computed __type __id "managed_by";
       producer_arn = Prop.computed __type __id "producer_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_data_share_consumer_association
        (aws_redshift_data_share_consumer_association ?allow_writes
           ?associate_entire_account ?consumer_arn ?consumer_region
           ~data_share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_writes ?associate_entire_account
    ?consumer_arn ?consumer_region ~data_share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?allow_writes ?associate_entire_account ?consumer_arn
      ?consumer_region ~data_share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
