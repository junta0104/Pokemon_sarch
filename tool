<div style="text-align: center">
  得意先コード
  <input type="text" name="custCode" value="<c:out value='${param.custCode}'/>"
         data-bs-toggle="tooltip" title="変更対象の得意先コードを入力">
  <button type="submit" name="buttonId" value="V201_01_02"
          data-bs-toggle="tooltip" title="指定コードの得意先を検索">検索</button>
  <br>

  得意先名
  <input type="text" name="custName" value="<c:out value='${param.custName}'/>"
         data-bs-toggle="tooltip" title="得意先の名称を入力"><br>

  電話番号
  <input type="text" name="tel" value="<c:out value='${param.tel}'/>"
         data-bs-toggle="tooltip" title="連絡先電話番号"><br>

  郵便番号
  <input type="text" name="postalCode" value="<c:out value='${param.postalCode}'/>"
         data-bs-toggle="tooltip" title="郵便番号（例：123-4567）"><br>

  住所
  <input type="text" name="address" value="<c:out value='${param.address}'/>"
         data-bs-toggle="tooltip" title="所在地住所"><br>

  割引率
  <input type="text" name="discount" value="<c:out value='${param.discount}'/>"
         data-bs-toggle="tooltip" title="割引率（%）を半角数字で入力"><br>

  <button type="submit" name="buttonId" value="V201_01_03"
          data-bs-toggle="tooltip" title="情報を保存して更新">変更</button><br>
</div>
