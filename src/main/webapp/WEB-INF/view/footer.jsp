 <footer class="site-footer" style="bottom:0;left:0px;position:fixed;width:100%;z-index:3000;">
        <div class="text-center">
            &copy; UniADV |
            <?php
            $dataDesenv = '2016';
            $dataAtual = date('Y');
            echo $dataDesenv;
            if ($dataDesenv != $dataAtual)
                echo " - " . $dataAtual; ?>
            | Desenvolvimento:
                <a href="http://www.crabsolutions.com.br/" target="_blank">
                    <img src="http://www.crabsolutions.com.br/crab/includes/img/logo.png" style="width:80px;" id="logo_rodape"></a>
                <a class="go-top" href="#">
                    <i class="fa fa-angle-up"></i>
                </a>
            </div>
        <!--Start of Zopim Live Chat Script-->
        <!--<script type="text/javascript">
            window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
                d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
            _.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
                $.src="//v2.zopim.com/?453EbqBiQSVphmDHU0XIIfP866br5EsC";z.t=+new Date;$.
                    type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
        </script>-->
        <!--End of Zopim Live Chat Script-->
        </div>
    </footer>