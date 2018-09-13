package com.ly.alipay;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *������AlipayConfig
 *���ܣ�����������
 *��ϸ�������ʻ��й���Ϣ������·��
 *�޸����ڣ�2017-04-05
 *˵����
 *���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 *�ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���
 */

public class AlipayConfig {
	
//�����������������������������������Ļ�����Ϣ������������������������������

	// Ӧ��ID,����APPID���տ��˺ż�������APPID��Ӧ֧�����˺�
	public static String app_id = "2016091700529339";
	
	// �̻�˽Կ������PKCS8��ʽRSA2˽Կ
    public static String merchant_private_key ="MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCAb1tpP+W6me+aAh+ptLMVqNCJGde3uE1FAeqgLDmrf9Osk9zM9NNakT0dB1uIixKHt4kqJdjQQyqOM9cVp7RgbyFn+o4EQOPlVcT7daAUs+IA6J5z1QAKA0bBYw9ZW/ga9zDQPCBsWJGw6wnvtJtIFsqC5B2eCjQoA9j7CccTAEGTPrrLDgfzhpw/Ydu0jXh4ENfCl5SXeS1ACcRRDc7+Q6s7T07mrBa5/qpjbhhU0/MnGmsmYDQd2f4CpR/Faw2c/7dnsEbqHpo3ngMXTvSeYQF1q9IohKTo/ddHVG+kE3KGSxs3qK/tPia0I6HJ5BwN8Veqw+QLaKA7ydVn2kTPAgMBAAECggEAX1vOwBd8Jw7yMiPPhH4w1S0RICo62yKQ5GKm5KPRcb8n16O1Ncu1PTJG8M2srXWsnW2s/sk48HBeIVTmJiLtLwh0AjKqzQes7XLAHX/ZCmYAsHIGa7RDIiwKlb1KASviy4qrCIEMBcXA7l2kdABhpqWdWI+sWdHzpZ4ttT4uO7FO5OYbpjfpQMDogcK74VX/EYHcoMHGnde+/F2DeNUlAUmfMwTXXyq3OmTZbz776wL6FHvPoBUaryAo1EiIJdEQLG4mvBIaqVW8tzwlEijBEqEBW+N6uMKyLDAyQOkfPB/gK4823wWzznZmOZEFLBOWTSHKpPU5oZML0zTHnjGU8QKBgQDLy+cGls5jrJ4O/3uxGxUpJb4ji3kleaKSY3JKfByQdHoTrZJKvxUkpkvojqOuY72hSvgrQ1TgmbSIQanwpu6zMVZ17Ts+xTPaRrAvchyk+5dySNITxuy81AR463F5yCTH14m+5Xtpu9aqwWcoj5IVg13X564XW5NspFSnoTx5OQKBgQChVZI8bvGbRumueE6vc9aDVd/qoKzvLzAAoxs0SeobF4dfimRerrG9A0yLnBr4kfzwkbSePXUs83uMMgOa1UQQkV774iDG00dCv4HHIf7+OTvBwDBHxLXaZf4+SWRNyAdp1P2xVCLft2M9d67ZQhpUXBled0Hv5oS3D1w/U7fWRwKBgHDwY+x74I7OV52aKhMhHh36g5+xKIcDHHwhznHGzBGl6w1CsILp2C7CVejgO4dmUO203UkkfEIoDCtCsInkCP6XRgH+YUnNAYpiiDsS8xrfLrOv9XPuVr3ihUP5vp4ts2xoXzbCeB1FcpaYrbGFtwBjF7uR8iGRp2aavytSqG/JAoGAOc+sAzPOJ9IVUouRxpU/vPg8sJq63UqPbOsFiIsj9GlN/RJePP9keVKBT1W05HWLqbjMfBeRsXXeQ7J4UDczmKw+2QuCqzxyQJzXKEAqW3auzxLLOixm7ce2fyNVafnPjkDgV3bKuFfCm/gTE474WFpYTN13Jzv3OpGqgJbDPWkCgYBGQnArnWZvijAvKo3bu9x2/8HMCOagDQR5+Wji+XLsgGW70RvC7rv0et6KVmBZmBXjL23OnOSZeHhRaWey4uC8OcE5yT5LV310I8eRZloCdxrfwprZlfMzCwN1Z6bluK8/aLSg0IspEHdxaLbm2pNJfKBqpJXqof1e+NwOCTpF6w==";

	// ֧������Կ,�鿴��ַ��https://openhome.alipay.com/platform/keyManage.htm ��ӦAPPID�µ�֧������Կ��
    public static String alipay_public_key ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqZWhDPjBPXZ7b+d/bOs5+KYCL7LnrgEUZkM6IWQnG0xyQ1Qd7sEYgp2D94ZbadP6F6p5J2EEfIvBxugQr/nVm2hRcdcmkbIA4MoD2RFnE5yh4W3r8QsJ8ugw/R0Vdo5CMhdNetnZYrNlr6kwqJoUeSRL7yCq20mJ0sFgLIWUy8TeUSgMinD0brus5VqJTNR2sYPkPs44RL7KxxtPeR7eHRSi8IricDjoZcMBD7Ao99z38elfqlbAdTJ1NB0IWgebmJ0UXRwYjO3tc9cbKXlVnFaTspRxFREwdCfL5ig7V2Bj5CfvbR63Mw3wRN8TdbCFX2nty+aj1YFnsUIsjJcINwIDAQAB";

	// �������첽֪ͨҳ��·��  ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
	public static String notify_url = "http://localhost:8080/notify_url.jsp";

	// ҳ����תͬ��֪ͨҳ��·�� ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
	public static String return_url = "http://localhost:8080/return_url.jsp";

	// ǩ����ʽ
	public static String sign_type = "RSA2";
	
	// �ַ������ʽ
	public static String charset = "utf-8";
	
	// ֧��������
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// ֧��������
	public static String log_path = "C:\\";


//�����������������������������������Ļ�����Ϣ������������������������������

    /** 
     * д��־��������ԣ�����վ����Ҳ���ԸĳɰѼ�¼�������ݿ⣩
     * @param sWord Ҫд����־����ı�����
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

